package keptn

import future.keywords.in


default allow = false

allow {

   input.action in ["read", "write", "add"]

   some role in func_get_roles(input.sub)
   x := func_get_permissions(role)[_]

   x.action in [input.action, "*"]
   x.project in [input.project, "*"]
   x.stage in [input.stage, null ,"*"]
}

matched[x] {
   input.action in ["read", "write", "add"]

   some role in func_get_roles(input.sub)
   x := func_get_permissions(role)[_]

   x.action in [input.action, "*"]
   x.project in [input.project, "*"]
   x.stage in [input.stage, "*"]
}

# Extract subject roles
func_get_roles(user) = roles {
    roles := data.users[user]
}

# Extract permission for an action imposed on a role
func_get_permissions(role) = permissions {
    permissions := data.roles[role]
}
