function _define_property(obj, key, value) {
    if (key in obj) {
        Object.defineProperty(obj, key, {
            value: value,
            enumerable: true,
            configurable: true,
            writable: true
        });
    } else {
        obj[key] = value;
    }
    return obj;
}
function _object_spread(target) {
    for(var i = 1; i < arguments.length; i++){
        var source = arguments[i] != null ? arguments[i] : {};
        var ownKeys = Object.keys(source);
        if (typeof Object.getOwnPropertySymbols === "function") {
            ownKeys = ownKeys.concat(Object.getOwnPropertySymbols(source).filter(function(sym) {
                return Object.getOwnPropertyDescriptor(source, sym).enumerable;
            }));
        }
        ownKeys.forEach(function(key) {
            _define_property(target, key, source[key]);
        });
    }
    return target;
}
import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useProdobitClient } from '../providers/ProdobitProvider';
import { queryKeys } from '../utils/query-keys';
export var useAuth = function() {
    var client = useProdobitClient();
    var queryClient = useQueryClient();
    var requestOTP = useMutation({
        mutationFn: function(param) {
            var email = param.email, tenantId = param.tenantId;
            return client.loginWithOTP(email, tenantId);
        }
    });
    var verifyOTP = useMutation({
        mutationFn: function(param) {
            var email = param.email, code = param.code, tenantId = param.tenantId;
            return client.completeLogin(email, code, tenantId);
        },
        onSuccess: function() {
            queryClient.invalidateQueries({
                queryKey: queryKeys.auth.me()
            });
        }
    });
    var logout = useMutation({
        mutationFn: function(allDevices) {
            return client.signOut(allDevices);
        },
        onSuccess: function() {
            queryClient.clear();
        }
    });
    var refreshToken = useMutation({
        mutationFn: function() {
            return client.refreshToken();
        }
    });
    return {
        requestOTP: requestOTP,
        verifyOTP: verifyOTP,
        logout: logout,
        refreshToken: refreshToken
    };
};
export var useCurrentUser = function(options) {
    var client = useProdobitClient();
    return useQuery(_object_spread({
        queryKey: queryKeys.auth.me(),
        queryFn: function() {
            return client.getCurrentUser();
        }
    }, options));
};
