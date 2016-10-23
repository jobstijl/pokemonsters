Ext.define('Pokemonsters.model.Pokemon', {
    extend: 'Ext.data.Model',

    idProperty: 'index',

    fields: [
        'index','name', 'type_1', 'type_2', 'max_cp', 'max_hp', 'image_url'
    ],

    proxy: {
        type: 'rest',
        url: '/pokemons'
    }
});
