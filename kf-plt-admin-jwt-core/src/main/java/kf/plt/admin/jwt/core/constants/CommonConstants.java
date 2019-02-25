package kf.plt.admin.jwt.core.constants;

/**
 * 常量信息类
 * @author ace
 * @version 2017/8/29
 */
public class CommonConstants {
    public static final String CONTEXT_KEY_USER_ID = "currentUserId";
    public static final String CONTEXT_KEY_USERNAME = "currentUserName";
    public static final String CONTEXT_KEY_USER_NAME = "currentUser";
    public static final String CONTEXT_KEY_USER_TOKEN = "currentUserToken";
    public static final String CONTEXT_KEY_TENANT_ID = "currentTenantId";
    public static final String CONTEXT_KEY_GROUP_ID = "currentGroupId";
    public static final String JWT_KEY_USER_ID = "userId";
    public static final String JWT_KEY_NAME = "userName";
    public static final String JWT_KEY_EXPIRE = "expire";
    public static final String JWT_KEY_TENANT_ID = "tenant";
    public static final String JWT_KEY_GROUP_ID = "groupId";
    public static final String REDIS_USER_TOKEN = "jwt:user_";
    public static final String CONTEXT_KEY_REQUEST_URI="requestUri";
	
	public CommonConstants() {
    }
}
