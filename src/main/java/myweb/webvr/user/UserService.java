package myweb.webvr.user;


public interface UserService {
    public void register(User user);

    public User validateUser(Login login);
    boolean isUsernameExists(String username);
}



