<?php

namespace App\Http\Controllers;

use App\Models\CounterEvent;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
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
        Log::info("calling Index with data:",array($request->data));
         $request->validate([
            'lastAction' => 'required',
            'counterValue' => 'required', 
        ]);
        CounterEvent::create($request->all());
        Log::info("store "); 
        return response($request->data,200);
    }

   /**
     * Display a listing of the resource.
     *
     * @return view
     */
    public function index()
    {  
        Log::info("calling Index...");
        $counterEvents=CounterEvent::all();
        if (count($counterEvents)==0) {
            Log::info("No records, redirecting to counter page");
            return view('counter');}

        return view('history',compact('counterEvents'));
    } 
  
     
}