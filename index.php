<?php
    class DataBase
    {
        public $con;
        public function __construct(){
            $this->con = mysqli_connect("localhost", "root", "", "bimabd");
            if($this->con){
               // echo "hello";
            }            
            else{
                echo "failed";
            }
        }

        function quote($region, $age, $day)
        {
            

            $sql = "SELECT * FROM omc_premium INNER JOIN rgion_table ON omc_premium.region = rgion_table.reg_id INNER JOIN age_table ON omc_premium.age = age_table.age_id WHERE omc_premium.region = ".$region." AND omc_premium.age = ". $age." AND ".$day." BETWEEN day_init AND day_range";
            $array = array();
            $query = mysqli_query($this->con, $sql);
            while($row = mysqli_fetch_assoc($query)){
                $array[] = $row;
                foreach($array as $row){
                    echo "Selected Age range - ".$row["ageS"]."<br>";
                    echo "Country Region - ".$row["region_type"]."<br>";
                    echo "Expected Travel Days - ".$day. "days<br>";
                    echo "Premium - ".$row["net_premium"]." Taka<br><br>";
                    
                }
            }
        }
    }
    $obj = new DataBase;


    $obj->quote(1, 1, 5);
    $obj->quote(1, 2, 8);
    $obj->quote(2, 2, 17);
   
?>