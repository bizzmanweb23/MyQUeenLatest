

@extends('mlmuser.layouts.master')
@section('title','Myqueen | Placement')
@section('body')
<!-- Scroll Top -->
<a id="scroll-top" href="#top" title="Top" role="button" class="scroll-top"><i class="d-icon-arrow-up"></i></a>

<!-- MobileMenu -->
<div class="mobile-menu-wrapper">
    <div class="mobile-menu-overlay">
    </div>
    <!-- End of Overlay -->
    <a class="mobile-menu-close" href="#"><i class="d-icon-times"></i></a>
    <!-- End of CloseButton -->
    <div class="mobile-menu-container scrollable">
        <form action="#" class="input-wrapper">
            <input type="text" class="form-control" name="search" autocomplete="off"
                placeholder="Search your keyword..." required />
            <button class="btn btn-search" type="submit">
                <i class="d-icon-search"></i>
            </button>
        </form>
        <!-- End of Search Form -->
        <ul class="mobile-menu mmenu-anim">
            <li>
                <a href="{{url('/')}}">Home</a>
            </li>
            <li>
                <a href="{{url('about')}}">About</a>
            </li>
           
            <li>
                <a href="{{url('products')}}">Products</a>
                <ul>
                    <li><a href="{{url('products')}}">MQ Freckle Essence</a></li>
                    <li><a href="{{url('products')}}">MQ Anti-Blue Light Exquisite Spray</a></li>
                    <li><a href="{{url('products')}}">Coconut Oil Amino Acid Facial Cleanser</a></li>
                    <li><a href="{{url('products')}}">MQ Avocado Neckline Repair Message Cream</a></li>
                    <li><a href="{{url('products')}}">MQ Medical Mask</a></li>
                    
                </ul>
            </li>
          
         
            <li>
                <a href="{{url('contact')}}">Contact </a>
            </li>
            
        </ul>
    </div>
</div>


<meta name="csrf-token" content="{{ csrf_token() }}" />
<main class="main account">
    <img src="images/Welcome.jpg" alt="" class="img-fluid" style="width:100%">
    <div class="container">
        <form action="{{route('Store-placement-Details')}}" method="post">
            @csrf
            <hr>
            <div class="col-md-3">					
                    <label>Email_ID</label>
                     <input type="text" class="form-control" value="{{app('request')->input('email_id')}}" disabled placeholder="Email_id *" />
                 {{Session::put('email_id',app('request')->input('email_id'))}}
             </div>
            <div class="col-md-3">					
                    <label>Placement ID</label>
                    <select name="placement_id" id="placement_id" class="form-control placementDetails">
                    <option value="">-- select --</option>
					<?php 
                        foreach ($result as $data)
                        {
                    ?>
                    <option value="<?php echo $data->sponser_id; ?>"><?php echo $data->sponser_id;?></option>
                    <?php 
                        }
                    ?>
				    </select>
                </div>
                <br>
            <div class="row">
                <div class="col-md-3">
                    <label>Placement*</label>
                    <select name="placement" id="placement" class="form-control">
                        <option value="left"> Left</option>
                        <option value="right"> Right</option>
                    </select>
                    <span id="placement_error" style="color: red"></span>
                </div>
                <div class="col-md-3">
                    <button class="btn btn-md btn-block btn-dark" id="submit">SUBMIT</button>
                </div>
            </div>
        </form>
        <br>
        <hr>
    </div>
</main>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $('body').on('change','.placementDetails',function()
	{
		//alert('hello');
		var id= $(this).val();
		 $.ajax({
                    url: "{{ route('get_placement_id') }}",
                    type: "get",
                    data: 
	                {
                        "_token": "{{ csrf_token() }}",
                              id: id
                    },
                    dataType: "json",
                    beforeSend: function() 
	                {
                        $('#user_loder').show()
                    },
                    success: function(data) 
	                {
                        $('#placement').empty();
                        if (data.view == 2) 
						{
                            $('#placement').append(
                            '<option value="">--Select--</option> <option value="0">' + data.data
                            .left +
                            '</option><option value="1">' + data.data.right + '</option>')
                        } else 
						{
                            $('#placement').append('<option value="">--Select--</option> <option value="' +
                            data.value + '">' + data.data +
                            '</option>')
                        }
                        $('#loder').hide();			
                    },
                    error: function() 
	                {
                        $('#user_loder').hide();
                        alert("Fail")
                    }
                })
	})

    
</script>
@endsection