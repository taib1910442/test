package myweb.webvr.UserProfile;


import java.util.List;

// DAO cho Ratings
    public interface RatingDAO {
        List<Rating> getRatingsByUsername(String username);
    }

