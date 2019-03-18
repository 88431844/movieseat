package dto;

public class AdminLoginDto {
    /**
     * 后台管理员账号
     */
    private String adminUserName;
    /**
     * 后台管理员密码
     */
    private String adminPassword;
    /**
     * 管理员角色
     * 0=经理
     * 1=员工
     */
    private int role;

    public String getAdminUserName() {
        return adminUserName;
    }

    public void setAdminUserName(String adminUserName) {
        this.adminUserName = adminUserName;
    }

    public String getAdminPassword() {
        return adminPassword;
    }

    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }
}
