package myweb.webvr.UserProfile;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class RatingDAOImpl implements RatingDAO{
    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public RatingDAOImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<Rating> getRatingsByUsername(String username) {
        String sql = "SELECT * FROM Ratings WHERE Username = ?";
        return jdbcTemplate.query(sql, new Object[]{username}, new RatingMapper());
    }


    public static class RatingMapper implements RowMapper<Rating> {
        @Override
        public Rating mapRow(ResultSet rs, int rowNum) throws SQLException {
            Rating rating = new Rating();
            rating.setUsername(rs.getString("Username"));
            rating.setLocationID(rs.getInt("LocationID"));
            rating.setRatingValue(rs.getDouble("RatingValue"));
            rating.setComment(rs.getString("Comment"));
            return rating;
        }
    }

}
