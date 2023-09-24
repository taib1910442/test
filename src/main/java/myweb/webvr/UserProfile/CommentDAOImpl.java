package myweb.webvr.UserProfile;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class CommentDAOImpl implements CommentDAO {
    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public CommentDAOImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<Comment> getCommentsByUsername(String username) {
        String sql = "SELECT * FROM Comments WHERE Username = ?";
        return jdbcTemplate.query(sql, new Object[]{username}, new CommentMapper());
    }
    public static class CommentMapper implements RowMapper<Comment> {
        @Override
        public Comment mapRow(ResultSet rs, int rowNum) throws SQLException {
            Comment Comment = new Comment();
            Comment.setUsername(rs.getString("Username"));
            Comment.setLocationID(rs.getInt("LocationID"));
            Comment.setReplyTo(rs.getInt("ReplyTo"));
            Comment.setContent(rs.getString("Content"));
            return Comment;
        }
    }
    @Override
    public Comment addComment(Comment comment) {
        String sql = "INSERT INTO Comments (Username, LocationID, Content) VALUES (?, ?, ?)";
        jdbcTemplate.update(sql, comment.getUsername(), comment.getLocationID(), comment.getContent());
        return comment;
    }
    @Override
    public List<Comment> getAllComments() {
        String sql = "SELECT * FROM Comments";
        return jdbcTemplate.query(sql, (resultSet, rowNum) -> {
            Comment comment = new Comment();
            comment.setCommentID(resultSet.getInt("CommentID"));
            comment.setUsername(resultSet.getString("Username"));
            comment.setLocationID(resultSet.getInt("LocationID"));
            comment.setReplyTo(resultSet.getInt("ReplyTo"));
            comment.setContent(resultSet.getString("Content"));
            return comment;
        });
    }
}