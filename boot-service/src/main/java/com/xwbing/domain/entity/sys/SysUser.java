package com.xwbing.domain.entity.sys;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.validation.constraints.Pattern;
import java.util.List;

/**
 * 说明: 用户
 * 项目名称: boot-module-demo
 * 创建时间: 2017/5/10 16:36
 * 作者:  xiangwb
 */
@EqualsAndHashCode(callSuper = true)
@Data
@Entity(name = "sys_user_info")
@ApiModel
public class SysUser extends BaseEntity {
    private static final long serialVersionUID = -2447528751353457021L;
    public static String table = "sys_user_info";
    @NotBlank(message = "用户名不能为空")
    @Length(min = 1, max = 20, message = "用户名长度为1-20")
    @Column(name = "user_name")
    @ApiModelProperty(value = "用户名",example = "xxx")
    private String userName;
    @NotBlank(message = "姓名不能为空")
    @Length(min = 1, max = 20, message = "姓名长度为1-5")
    @ApiModelProperty(value = "姓名",example = "xxx")
    private String name;
    @NotBlank(message = "邮箱不能为空")
    @Email(message = "邮箱格式有误")
    @ApiModelProperty(value = "邮箱",example = "@163.com")
    private String mail;
    @NotBlank(message = "性别不能为空")
    @Pattern(regexp = "[01]", message = "性别格式为0|1,0代表女,1代表男")
    @ApiModelProperty(value = "性别",example = "1")
    private String sex;
    @ApiModelProperty(value = "盐值",hidden = true)
    private String salt;
    @ApiModelProperty(value = "密码",hidden = true)
    private String password;
    @ApiModelProperty(value = "是否为管理员",hidden = true)
    private String admin;
    //临时字段
    @ApiModelProperty(hidden = true)
    private transient String create;
    @ApiModelProperty(hidden = true)
    private transient String modified;
    @ApiModelProperty(hidden = true)
    private transient String sexName;
    @ApiModelProperty(hidden = true)
    private transient List<SysAuthority> menuArray;
    @ApiModelProperty(hidden = true)
    private transient List<SysAuthority> buttonArray;
}
