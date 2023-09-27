<?php

namespace App\Http\Controllers;
// require_once 'dompdf/autoload.inc.php';
use Illuminate\Http\Request;
use App\Models\Customers;
// use Barryvdh\Dompdf\Dompdf;
// use Dompdf\Dompdf;
use PDF;
class CustomerController extends Controller
{
    public function html(){
        $html='<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>My PDF</title>
</head>
<body>
    <h1>This is my PDF</h1>
    <p>This is some text in English.</p>
    <p>This is some text in Spanish.</p>
    <p>Este es un texto en español.</p>
    <p>हिन्दी जिसके मानकीकृत रूप को मानक हिन्दी कहा जाता है, विश्व की एक प्रमुख भाषा है और भारत की एक राजभाषा है। केन्द्रीय स्तर पर भारत में सह-आधिकारिक </p>
</body>
</html>';

        $dompdf = new Dompdf();
        $dompdf->loadHtml($html);
        $dompdf->setPaper('A4', 'portrait');
        $dompdf->render();
        $dompdf->stream('my-pdf.pdf');
    }

    public function mpdf(){
        // $Customers=Customers::all();
        $data = [
            'foo' => 'bar'
        ];
        $pdf = PDF::loadView('mpdf', $data);
        return $pdf->stream('document.pdf');
}

    public function lang(){

    return view('lang');
    }

}
