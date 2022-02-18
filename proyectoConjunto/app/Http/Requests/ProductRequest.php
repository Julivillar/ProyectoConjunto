<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'required|min:10',
            'description' => 'required | min:10 | max:1000',
            'category' => 'required',
            'price' => 'required | min:1 | numeric',
            'discount' => 'required | min:0 | max:100 | numeric',
            'taxes' => 'required | min:0 | max:100 | numeric',
            'stock' => 'required | min:0 | integer',
        ];
    }
    public function messages()
    {
        return[
            'name.required'=> 'Este campo es obligatorio.',
            'name.min'=> 'Este campo necesita como minimo 10 caracteres.',
            'description.required'=> 'Este campo es obligatorio.',
            'description.min'=> 'Este campo necesita como minimo 10 caracteres.',
            'description.max'=> 'Este campo necesita como maximo 1000 caracteres.',
            'category.required'=> 'Este campo es obligatorio.',
            'price.required'=> 'Este campo es obligatorio.',
            'price.min'=> 'Este campo necesita como minimo 1 caracteres.',
            'price.numeric'=> 'Este campo solo puede ser números decimales.',
            'discount.required' => 'Este campo es obligatorio.',
            'discount.min' => 'Este campo necesita como minimo 0 caracteres.',
            'discount.max' => 'Este campo necesita como maximo 100 caracteres.',
            'discount.numeric' => 'Este campo solo puede ser números decimales.',
            'taxes.required' => 'Este campo es obligatorio.',
            'taxes.min' => 'Este campo necesita como minimo 0 caracteres.',
            'taxes.max' => 'Este campo necesita como maximo 100 caracteres.',
            'taxes.numeric' => 'Este campo solo puede ser números decimales.',
            'stock.required' => 'Este campo es obligatorio.',
            'stock.min' => 'Este campo necesita como minimo 0 caracteres.',
            'stock.integer' => 'Este campo solo puede ser números enteros.',
        ];
    }
}
