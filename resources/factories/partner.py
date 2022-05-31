

def factory_new_partner():
    return {
        'name': 'Pizzas brasileira',
	    'email': 'contact@test.com.br',
	    'whatsapp': '11999999999',
	    'business': 'Restaurante'
    }

def factory_dup_name():
    return {
        'name': 'Massas italianas',
	    'email': 'test@test.com.br',
	    'whatsapp': '12999999999',
	    'business': 'Conveniência'
    }

def factory_partner_list():
    return [{
        'name': 'Feijoada paulista',
	    'email': 'paulista@test.com.br',
	    'whatsapp': '13999999999',
	    'business': 'Conveniência'
    },
    {
        'name': 'Tutu de feijao',
	    'email': 'mineiro@test.com.br',
	    'whatsapp': '17999999999',
	    'business': 'Conveniência'
    },
    {
        'name': 'Pastel hipon',
	    'email': 'hipon@test.com.br',
	    'whatsapp': '21999999999',
	    'business': 'Conveniência'        
    }]

def factory_enable_partner():
    return {
        'name': 'Deces portugueses',
	    'email': 'portuga@test.com.br',
	    'whatsapp': '21999999999',
	    'business': 'Conveniência'
    }

def factory_404_partner():
    return {
        'name': 'Frangos assados',
	    'email': 'frangos@test.com.br',
	    'whatsapp': '41999999999',
	    'business': 'Restaurante'
    }

def factory_disable_partner():
    return {
        'name': 'Dogao Oz',
	    'email': 'dog.oz@test.com.br',
	    'whatsapp': '11999999998',
	    'business': 'Conveniência'
    }

def factory_remove_partner():
    return {
        'name': 'Vencidinhos',
	    'email': 'vencidinhos@test.com.br',
	    'whatsapp': '11999999997',
	    'business': 'Conveniência'
    }
    