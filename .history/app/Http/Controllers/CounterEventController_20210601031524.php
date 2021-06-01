<?php

namespace App\Http\Controllers;

use App\Models\CounterEvent;
use Illuminate\Http\Request;

class CounterEventController extends Controller
{
     
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
         $request->validate([
            'lastAction' => 'required',
            'counterValue' => 'required', 
        ]);
        CounterEvent::create($request->all());

        return response($request->data,200);
    }

   /**
     * Display a listing of the resource.
     *
     * @return view
     */
    public function index()
    {  
         $counterEvents=CounterEvent::all();
        if (count($counterEvents)==0)

          return view('history',compact('counterEvents'));
    } 
  
     
}