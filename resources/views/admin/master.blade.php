<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>SB Admin Panel</title>

        <!-- Bootstrap Core CSS -->
        <link href="{{asset('/')}}admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="{{asset('/')}}admin/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="{{asset('/')}}admin/dist/css/invoice.css" rel="stylesheet">
        <link href="{{asset('/')}}admin/dist/css/sb-admin-2.css" rel="stylesheet">

        <!-- Morris Charts CSS -->
        <link href="{{asset('/')}}admin/vendor/morrisjs/morris.css" rel="stylesheet">



        <!-- DataTables Responsive CSS -->
        <link href="{{asset('/')}}admin/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">
        <link href="{{asset('/')}}admin/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="{{asset('/')}}admin/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <script src="{{asset('/')}}admin/ckeditor/ckeditor.js"></script>
        <script src="{{asset('/')}}admin/ckeditor/samples/js/sample.js"></script>
        {{--<link rel="stylesheet" href="{{asset('/')}}admin/ckeditor/samples/css/samples.css">--}}
        <link rel="stylesheet" href="{{asset('/')}}admin/ckeditor/samples/toolbarconfigurator/lib/codemirror/neo.css">

    </head>

    <body>

        <div id="wrapper">

            <!-- Navigation -->
            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">

               @include('admin.includes.header')
                <!-- /.navbar-top-links -->

                <div class="navbar-default sidebar" role="navigation">
                    @include('admin.includes.menu')
                    <!-- /.sidebar-collapse -->
                </div>
                <!-- /.navbar-static-side -->
            </nav>

            <div id="page-wrapper">
                @yield('mainContent')
                <!-- /.row -->
            </div>
            <!-- /#page-wrapper -->

        </div>
    <!-- /#wrapper -->

        <!-- jQuery -->
        <script src="{{asset('/')}}admin/vendor/jquery/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="{{asset('/')}}admin/vendor/bootstrap/js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="{{asset('/')}}admin/vendor/metisMenu/metisMenu.min.js"></script>

        <!-- Morris Charts JavaScript -->
       <script src="{{asset('/')}}admin/vendor/raphael/raphael.min.js"></script>
        <script src="{{asset('/')}}admin/vendor/morrisjs/morris.min.js"></script>
        <script src="{{asset('/')}}admin/data/morris-data.js"></script>

        <script src="{{asset('/')}}admin/vendor/datatables/js/jquery.dataTables.min.js"></script>
        <script src="{{asset('/')}}admin/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
        <script src="{{asset('/')}}admin/vendor/datatables-responsive/dataTables.responsive.js"></script>
        <!--invoice-->
        <script src="{{asset('/')}}admin/dist/js/invoice.js"></script>
        <!-- Custom Theme JavaScript -->
        <script src="{{asset('/')}}admin/dist/js/sb-admin-2.js"></script>


        <script>
            $(document).ready(function(){c
                $('#message').click(function () {
                    $(this).text(' ');
                });
            });
            //
            initSample();
            //for data table
            $(document).ready(function() {
                $('#dataTables-example').DataTable({
                    responsive: true
                });
            });
        </script>



    </body>

</html>
