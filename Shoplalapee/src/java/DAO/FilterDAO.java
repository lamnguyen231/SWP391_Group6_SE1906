package DAO;

import static DAO.dbConfig.con;
import Model.Product.FilterProduct;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FilterDAO extends dbConfig {

    public FilterDAO() {
        super();
    }

    public String getFilterOfCategories(int category_id) {
        String sql = "SELECT filters.filter_id, filters.category_id, filters.nameFilter " +
                     "FROM filters " +
                     "JOIN categories ON categories.category_id = filters.category_id " +
                     "WHERE categories.category_id = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, category_id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getString("filter_id");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public List<FilterProduct> getListFilter(int category_id) {
        List<FilterProduct> listF = new ArrayList<>();
        String sql = "SELECT * FROM filters WHERE category_id = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, category_id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int filter_id = rs.getInt("filter_id");
                String nameFilter = rs.getString("nameFilter");
                FilterProduct filter = new FilterProduct();
                filter.setCategory_id(category_id);
                filter.setFilter_id(filter_id);
                filter.setNameFilter(nameFilter);
                listF.add(filter);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return listF;
    }

    public List<FilterProduct> getListFilter(int category_id, int filter_id) {
        List<FilterProduct> listf = new ArrayList<>();
        String sql = "SELECT * FROM filters WHERE category_id = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, category_id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                filter_id = rs.getInt("filter_id");
                String nameFilter = rs.getString("nameFilter");
                FilterProduct filter = new FilterProduct();
                filter.setCategory_id(category_id);
                filter.setFilter_id(filter_id);
                filter.setNameFilter(nameFilter);
                listf.add(filter);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return listf;
    }

    public List<FilterProduct> getListFilterForSearch(String txt, int category_id) {
        List<FilterProduct> listf = new ArrayList<>();
        String sql = """
                     WITH SearchProducts AS (
                         SELECT DISTINCT 
                             p.category_id,
                             p.filter_id,
                             ROW_NUMBER() OVER (PARTITION BY p.product_id ORDER BY i.product_id) AS rn
                         FROM products p
                         JOIN imageproducts i ON p.product_id = i.product_id
                         WHERE p.product_name LIKE ?
                     )
                     SELECT 
                         f.nameFilter,
                         f.filter_id
                     FROM SearchProducts s
                     JOIN filters f ON s.filter_id = f.filter_id
                     JOIN categories c ON f.category_id = c.category_id
                     WHERE rn = 1 AND c.category_id = ?
                     """;
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, "%" + txt + "%");
            ps.setInt(2, category_id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String nameFilter = rs.getString("nameFilter");
                int idFilter = rs.getInt("filter_id");
                FilterProduct filter = new FilterProduct();
                filter.setNameFilter(nameFilter);
                filter.setFilter_id(idFilter);
                listf.add(filter);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return listf;
    }

    public List<FilterProduct> getListAllFilter() {
        List<FilterProduct> listF = new ArrayList<>();
        String sql = "SELECT * FROM filters";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int filter_id = rs.getInt("filter_id");
                int category_id = rs.getInt("category_id");
                String nameFilter = rs.getString("nameFilter");
                FilterProduct filter = new FilterProduct();
                filter.setCategory_id(category_id);
                filter.setFilter_id(filter_id);
                filter.setNameFilter(nameFilter);
                listF.add(filter);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return listF;
    }

    public void addFilter(int category_id, String filter_name) {
        try {
            String sql = "INSERT INTO filters (category_id, nameFilter) VALUES (?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, category_id);
            ps.setString(2, filter_name);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        FilterDAO df = new FilterDAO();
    }
}
