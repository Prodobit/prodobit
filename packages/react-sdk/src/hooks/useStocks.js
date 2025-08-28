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
export var useStocks = function(filters, options) {
    var client = useProdobitClient();
    return useQuery(_object_spread({
        queryKey: queryKeys.stocks.list(filters),
        queryFn: function() {
            return client.getStocks(filters);
        }
    }, options));
};
export var useStock = function(id, options) {
    var client = useProdobitClient();
    return useQuery(_object_spread({
        queryKey: queryKeys.stocks.detail(id),
        queryFn: function() {
            return client.getStock(id);
        },
        enabled: !!id && (options === null || options === void 0 ? void 0 : options.enabled) !== false
    }, options));
};
export var useStockMovements = function(filters, options) {
    var client = useProdobitClient();
    return useQuery(_object_spread({
        queryKey: queryKeys.stocks.movements(filters),
        queryFn: function() {
            return client.getStockMovements(filters);
        }
    }, options));
};
export var useCreateStock = function(options) {
    var client = useProdobitClient();
    var queryClient = useQueryClient();
    return useMutation({
        mutationFn: function(data) {
            return client.createStock(data);
        },
        onSuccess: function(data) {
            var _options_onSuccess;
            queryClient.invalidateQueries({
                queryKey: queryKeys.stocks.all()
            });
            options === null || options === void 0 ? void 0 : (_options_onSuccess = options.onSuccess) === null || _options_onSuccess === void 0 ? void 0 : _options_onSuccess.call(options, data);
        },
        onError: options === null || options === void 0 ? void 0 : options.onError
    });
};
export var useUpdateStock = function(options) {
    var client = useProdobitClient();
    var queryClient = useQueryClient();
    return useMutation({
        mutationFn: function(param) {
            var id = param.id, data = param.data;
            return client.updateStock(id, data);
        },
        onSuccess: function(data, variables) {
            var _options_onSuccess;
            queryClient.invalidateQueries({
                queryKey: queryKeys.stocks.all()
            });
            queryClient.invalidateQueries({
                queryKey: queryKeys.stocks.detail(variables.id)
            });
            options === null || options === void 0 ? void 0 : (_options_onSuccess = options.onSuccess) === null || _options_onSuccess === void 0 ? void 0 : _options_onSuccess.call(options, data);
        },
        onError: options === null || options === void 0 ? void 0 : options.onError
    });
};
