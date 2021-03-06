<?php

namespace App\Http\Controllers\MLM;
use DB;
use Helper;
use App\Http\Controllers\Controller;
use App\Models\MatchingBonus;
use App\Models\User;
use App\Models\Order;
use App\Models\MLMRegister;
use App\Models\Ranking;
use App\Models\UseOfPv;
use App\Models\LeaderShipBonus;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class MLMLeadershipController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
		//$data = LeaderShipBonus::where('sponser_id', Auth::user()->unique_id)->get();
		//echo '<pre>'; print_r($data);die;
        return view('mlm.leadership-bonus.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data = LeaderShipBonus::where('sponser_id', Auth::user()->user_id)->get();
		//echo '<pre>'; print_r($data);die;
		echo json_encode($data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}