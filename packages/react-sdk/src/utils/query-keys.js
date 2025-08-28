export var queryKeys = {
    auth: {
        me: function() {
            return [
                'auth',
                'me'
            ];
        },
        permissions: function() {
            return [
                'auth',
                'permissions'
            ];
        }
    },
    tenants: {
        all: function() {
            return [
                'tenants'
            ];
        },
        list: function(query) {
            return [
                'tenants',
                'list',
                query
            ];
        },
        detail: function(id) {
            return [
                'tenants',
                'detail',
                id
            ];
        },
        members: function(id) {
            return [
                'tenants',
                id,
                'members'
            ];
        },
        invitations: function(id) {
            return [
                'tenants',
                id,
                'invitations'
            ];
        }
    },
    parties: {
        all: function() {
            return [
                'parties'
            ];
        },
        list: function(query) {
            return [
                'parties',
                'list',
                query
            ];
        },
        detail: function(id) {
            return [
                'parties',
                'detail',
                id
            ];
        },
        customers: function() {
            return [
                'parties',
                'customers'
            ];
        },
        suppliers: function() {
            return [
                'parties',
                'suppliers'
            ];
        },
        employees: function() {
            return [
                'parties',
                'employees'
            ];
        }
    },
    items: {
        all: function() {
            return [
                'items'
            ];
        },
        list: function(query) {
            return [
                'items',
                'list',
                query
            ];
        },
        detail: function(id) {
            return [
                'items',
                'detail',
                id
            ];
        }
    },
    assets: {
        all: function() {
            return [
                'assets'
            ];
        },
        list: function(filters) {
            return [
                'assets',
                'list',
                filters
            ];
        },
        detail: function(id) {
            return [
                'assets',
                'detail',
                id
            ];
        }
    },
    stocks: {
        all: function() {
            return [
                'stocks'
            ];
        },
        list: function(filters) {
            return [
                'stocks',
                'list',
                filters
            ];
        },
        detail: function(id) {
            return [
                'stocks',
                'detail',
                id
            ];
        },
        movements: function(filters) {
            return [
                'stocks',
                'movements',
                filters
            ];
        }
    },
    locations: {
        all: function() {
            return [
                'locations'
            ];
        },
        list: function(filters) {
            return [
                'locations',
                'list',
                filters
            ];
        },
        detail: function(id) {
            return [
                'locations',
                'detail',
                id
            ];
        }
    },
    attributes: {
        all: function() {
            return [
                'attributes'
            ];
        },
        list: function(query) {
            return [
                'attributes',
                'list',
                query
            ];
        },
        detail: function(id) {
            return [
                'attributes',
                'detail',
                id
            ];
        }
    },
    boms: {
        all: function() {
            return [
                'boms'
            ];
        },
        list: function(filters) {
            return [
                'boms',
                'list',
                filters
            ];
        },
        detail: function(id) {
            return [
                'boms',
                'detail',
                id
            ];
        }
    },
    salesOrders: {
        all: function() {
            return [
                'sales-orders'
            ];
        },
        list: function(filters) {
            return [
                'sales-orders',
                'list',
                filters
            ];
        },
        detail: function(id) {
            return [
                'sales-orders',
                'detail',
                id
            ];
        }
    }
};
