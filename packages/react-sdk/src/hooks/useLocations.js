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
export var useLocations = function(filters, options) {
    var client = useProdobitClient();
    return useQuery(_object_spread({
        queryKey: queryKeys.locations.list(filters),
        queryFn: function() {
            return client.getLocations(filters);
        }
    }, options));
};
export var useLocation = function(id, options) {
    var client = useProdobitClient();
    return useQuery(_object_spread({
        queryKey: queryKeys.locations.detail(id),
        queryFn: function() {
            return client.getLocation(id);
        },
        enabled: !!id && (options === null || options === void 0 ? void 0 : options.enabled) !== false
    }, options));
};
export var useCreateLocation = function(options) {
    var client = useProdobitClient();
    var queryClient = useQueryClient();
    return useMutation({
        mutationFn: function(data) {
            return client.createLocation(data);
        },
        onSuccess: function(data) {
            var _options_onSuccess;
            queryClient.invalidateQueries({
                queryKey: queryKeys.locations.all()
            });
            options === null || options === void 0 ? void 0 : (_options_onSuccess = options.onSuccess) === null || _options_onSuccess === void 0 ? void 0 : _options_onSuccess.call(options, data);
        },
        onError: options === null || options === void 0 ? void 0 : options.onError
    });
};
export var useUpdateLocation = function(options) {
    var client = useProdobitClient();
    var queryClient = useQueryClient();
    return useMutation({
        mutationFn: function(param) {
            var id = param.id, data = param.data;
            return client.updateLocation(id, data);
        },
        onSuccess: function(data, variables) {
            var _options_onSuccess;
            queryClient.invalidateQueries({
                queryKey: queryKeys.locations.all()
            });
            queryClient.invalidateQueries({
                queryKey: queryKeys.locations.detail(variables.id)
            });
            options === null || options === void 0 ? void 0 : (_options_onSuccess = options.onSuccess) === null || _options_onSuccess === void 0 ? void 0 : _options_onSuccess.call(options, data);
        },
        onError: options === null || options === void 0 ? void 0 : options.onError
    });
};
export var useDeleteLocation = function(options) {
    var client = useProdobitClient();
    var queryClient = useQueryClient();
    return useMutation({
        mutationFn: function(id) {
            return client.deleteLocation(id);
        },
        onSuccess: function(data, id) {
            var _options_onSuccess;
            queryClient.invalidateQueries({
                queryKey: queryKeys.locations.all()
            });
            queryClient.removeQueries({
                queryKey: queryKeys.locations.detail(id)
            });
            options === null || options === void 0 ? void 0 : (_options_onSuccess = options.onSuccess) === null || _options_onSuccess === void 0 ? void 0 : _options_onSuccess.call(options, data);
        },
        onError: options === null || options === void 0 ? void 0 : options.onError
    });
};
