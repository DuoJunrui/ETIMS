package cn.duojunrui.etims.system.domain;

/**
 * TODO
 *
 * @className: RoleMenuDO
 * @author: Duojunrui
 * @date: 2019-04-16 19:44
 */

public class RoleMenuDO {
    private Long id;
    private Long  roleId;
    private Long menuId;

    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }
    public Long getRoleId() {
        return roleId;
    }
    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }
    public Long getMenuId() {
        return menuId;
    }
    public void setMenuId(Long menuId) {
        this.menuId = menuId;
    }

    @Override
    public String toString() {
        return "RoleMenuDO{" +
                "id=" + id +
                ", roleId=" + roleId +
                ", menuId=" + menuId +
                '}';
    }
}
