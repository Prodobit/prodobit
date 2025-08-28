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
export var useParties = function(query, options) {
    var client = useProdobitClient();
    return useQuery(_object_spread({
        queryKey: queryKeys.parties.list(query),
        queryFn: function() {
            return client.getParties(query);
        }
    }, options));
};
export var useParty = function(id, options) {
    var client = useProdobitClient();
    return useQuery(_object_spread({
        queryKey: queryKeys.parties.detail(id),
        queryFn: function() {
            return client.getParty(id);
        },
        enabled: !!id && (options === null || options === void 0 ? void 0 : options.enabled) !== false
    }, options));
};
export var useCreatePerson = function(options) {
    var client = useProdobitClient();
    var queryClient = useQueryClient();
    return useMutation({
        mutationFn: function(data) {
            return client.createPerson(data);
        },
        onSuccess: function(data) {
            var _options_onSuccess;
            queryClient.invalidateQueries({
                queryKey: queryKeys.parties.all()
            });
            options === null || options === void 0 ? void 0 : (_options_onSuccess = options.onSuccess) === null || _options_onSuccess === void 0 ? void 0 : _options_onSuccess.call(options, data);
        },
        onError: options === null || options === void 0 ? void 0 : options.onError
    });
};
export var useCreateOrganization = function(options) {
    var client = useProdobitClient();
    var queryClient = useQueryClient();
    return useMutation({
        mutationFn: function(data) {
            return client.createOrganization(data);
        },
        onSuccess: function(data) {
            var _options_onSuccess;
            queryClient.invalidateQueries({
                queryKey: queryKeys.parties.all()
            });
            options === null || options === void 0 ? void 0 : (_options_onSuccess = options.onSuccess) === null || _options_onSuccess === void 0 ? void 0 : _options_onSuccess.call(options, data);
        },
        onError: options === null || options === void 0 ? void 0 : options.onError
    });
};
export var useUpdateParty = function(options) {
    var client = useProdobitClient();
    var queryClient = useQueryClient();
    return useMutation({
        mutationFn: function(param) {
            var id = param.id, data = param.data;
            return client.updateParty(id, data);
        },
        onSuccess: function(data, variables) {
            var _options_onSuccess;
            queryClient.invalidateQueries({
                queryKey: queryKeys.parties.all()
            });
            queryClient.invalidateQueries({
                queryKey: queryKeys.parties.detail(variables.id)
            });
            options === null || options === void 0 ? void 0 : (_options_onSuccess = options.onSuccess) === null || _options_onSuccess === void 0 ? void 0 : _options_onSuccess.call(options, data);
        },
        onError: options === null || options === void 0 ? void 0 : options.onError
    });
};
export var useDeleteParty = function(options) {
    var client = useProdobitClient();
    var queryClient = useQueryClient();
    return useMutation({
        mutationFn: function(id) {
            return client.deleteParty(id);
        },
        onSuccess: function(data, id) {
            var _options_onSuccess;
            queryClient.invalidateQueries({
                queryKey: queryKeys.parties.all()
            });
            queryClient.removeQueries({
                queryKey: queryKeys.parties.detail(id)
            });
            options === null || options === void 0 ? void 0 : (_options_onSuccess = options.onSuccess) === null || _options_onSuccess === void 0 ? void 0 : _options_onSuccess.call(options, data);
        },
        onError: options === null || options === void 0 ? void 0 : options.onError
    });
};
export var useCustomers = function(options) {
    var client = useProdobitClient();
    return useQuery(_object_spread({
        queryKey: queryKeys.parties.customers(),
        queryFn: function() {
            return client.getCustomers();
        }
    }, options));
};
export var useSuppliers = function(options) {
    var client = useProdobitClient();
    return useQuery(_object_spread({
        queryKey: queryKeys.parties.suppliers(),
        queryFn: function() {
            return client.getSuppliers();
        }
    }, options));
};
export var useEmployees = function(options) {
    var client = useProdobitClient();
    return useQuery(_object_spread({
        queryKey: queryKeys.parties.employees(),
        queryFn: function() {
            return client.getEmployees();
        }
    }, options));
};
