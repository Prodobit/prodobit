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
export var useTenants = function(query, options) {
    var client = useProdobitClient();
    return useQuery(_object_spread({
        queryKey: queryKeys.tenants.list(query),
        queryFn: function() {
            return client.getTenants(query);
        }
    }, options));
};
export var useTenant = function(id, options) {
    var client = useProdobitClient();
    return useQuery(_object_spread({
        queryKey: queryKeys.tenants.detail(id),
        queryFn: function() {
            return client.getTenant(id);
        },
        enabled: !!id && (options === null || options === void 0 ? void 0 : options.enabled) !== false
    }, options));
};
export var useCreateTenant = function(options) {
    var client = useProdobitClient();
    var queryClient = useQueryClient();
    return useMutation({
        mutationFn: function(data) {
            return client.createTenant(data);
        },
        onSuccess: function(data) {
            var _options_onSuccess;
            queryClient.invalidateQueries({
                queryKey: queryKeys.tenants.all()
            });
            options === null || options === void 0 ? void 0 : (_options_onSuccess = options.onSuccess) === null || _options_onSuccess === void 0 ? void 0 : _options_onSuccess.call(options, data);
        },
        onError: options === null || options === void 0 ? void 0 : options.onError
    });
};
export var useUpdateTenant = function(options) {
    var client = useProdobitClient();
    var queryClient = useQueryClient();
    return useMutation({
        mutationFn: function(param) {
            var id = param.id, data = param.data;
            return client.updateTenant(id, data);
        },
        onSuccess: function(data, variables) {
            var _options_onSuccess;
            queryClient.invalidateQueries({
                queryKey: queryKeys.tenants.all()
            });
            queryClient.invalidateQueries({
                queryKey: queryKeys.tenants.detail(variables.id)
            });
            options === null || options === void 0 ? void 0 : (_options_onSuccess = options.onSuccess) === null || _options_onSuccess === void 0 ? void 0 : _options_onSuccess.call(options, data);
        },
        onError: options === null || options === void 0 ? void 0 : options.onError
    });
};
export var useDeleteTenant = function(options) {
    var client = useProdobitClient();
    var queryClient = useQueryClient();
    return useMutation({
        mutationFn: function(id) {
            return client.deleteTenant(id);
        },
        onSuccess: function(data, id) {
            var _options_onSuccess;
            queryClient.invalidateQueries({
                queryKey: queryKeys.tenants.all()
            });
            queryClient.removeQueries({
                queryKey: queryKeys.tenants.detail(id)
            });
            options === null || options === void 0 ? void 0 : (_options_onSuccess = options.onSuccess) === null || _options_onSuccess === void 0 ? void 0 : _options_onSuccess.call(options, data);
        },
        onError: options === null || options === void 0 ? void 0 : options.onError
    });
};
export var useTenantMembers = function(tenantId, options) {
    var client = useProdobitClient();
    return useQuery(_object_spread({
        queryKey: queryKeys.tenants.members(tenantId),
        queryFn: function() {
            return client.getTenantMembers(tenantId);
        },
        enabled: !!tenantId && (options === null || options === void 0 ? void 0 : options.enabled) !== false
    }, options));
};
export var useTenantInvitations = function(tenantId, options) {
    var client = useProdobitClient();
    return useQuery(_object_spread({
        queryKey: queryKeys.tenants.invitations(tenantId),
        queryFn: function() {
            return client.getTenantInvitations(tenantId);
        },
        enabled: !!tenantId && (options === null || options === void 0 ? void 0 : options.enabled) !== false
    }, options));
};
