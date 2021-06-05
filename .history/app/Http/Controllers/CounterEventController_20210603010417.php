<?php

namespace App\Http\Controllers;

use App\Models\CounterEvent;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Throwable; 
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
    
        try { 
               CounterEvent::create($request->all());
               Log::debug("Record saved."); 
              }
        catch(Throwable $th){
               Log::error("failed to save record", array($th));
               }
              
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
        try {
                
                 Log::info("getting all records...");
                $counterEvents=CounterEvent::all();
              }
        catch (Throwable $th){
               Log::error("failed to get records", array($th)); 
              }
        
        if (count($counterEvents)==0) {

                Log::info("No records to find, redirecting to counter page...");
                return view('counter');
                }
            
                Log::error("failed to get records", array($th)); 
                return view('history',compact('counterEvents'));
               } 
        }