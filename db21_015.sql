-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 28, 2021 at 12:03 PM
-- Server version: 5.7.33-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db21_015`
--

-- --------------------------------------------------------

--
-- Table structure for table `Close_sale`
--

CREATE TABLE `Close_sale` (
  `CS_ID` varchar(20) COLLATE tis620_bin NOT NULL,
  `Q_ID` varchar(20) COLLATE tis620_bin NOT NULL,
  `CS_date` date NOT NULL,
  `CS_Status` varchar(100) COLLATE tis620_bin NOT NULL,
  `CS_percentpay` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;

--
-- Dumping data for table `Close_sale`
--

INSERT INTO `Close_sale` (`CS_ID`, `Q_ID`, `CS_date`, `CS_Status`, `CS_percentpay`) VALUES
('CS001', '11006', '2021-08-02', 'ชำระเงินมัดจำ 40%', 40),
('CS002', '11007', '2021-08-05', 'ชำระเงินมัดจำ 30%', 30),
('CS003', '11010', '2021-08-02', 'ชำระเงินมัดจำ 50%', 50),
('CS004', '11005', '2021-08-22', 'ชำระเงินครั้งแรก 40%', 40),
('CS005', '11005', '2021-08-30', 'ชำระเงินครั้งที่สอง 60%', 60),
('CS006', '11006', '2021-08-25', 'ชำระเงิน 40%', 40);

-- --------------------------------------------------------

--
-- Table structure for table `Color`
--

CREATE TABLE `Color` (
  `Color_ID` varchar(20) COLLATE tis620_bin NOT NULL,
  `Color_name` varchar(20) COLLATE tis620_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;

--
-- Dumping data for table `Color`
--

INSERT INTO `Color` (`Color_ID`, `Color_name`) VALUES
('Color01', 'เทา-น้ำตาล'),
('Color02', 'น้ำตาล-น้ำตาล'),
('Color03', 'น้ำตาล'),
('Color04', 'เทา'),
('Color05', 'แดง'),
('Color06', 'ส้ม'),
('Color07', 'เขียว'),
('Color08', 'ฟ้า');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Cus_ID` varchar(20) COLLATE tis620_bin NOT NULL,
  `Cus_name` varchar(20) COLLATE tis620_bin NOT NULL,
  `Cus_Addr` varchar(20) COLLATE tis620_bin NOT NULL,
  `Cus_Tel` varchar(20) COLLATE tis620_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Cus_ID`, `Cus_name`, `Cus_Addr`, `Cus_Tel`) VALUES
('C01', 'คุณแก้ว', 'กำแพงแสน', '081321654'),
('C02', 'คุณอุดร', 'บางเลน', '0825689865'),
('C03', 'คุณพิพัฒน์', 'ดอนตูม', '087996554'),
('C04', 'คุณน้ำใส', 'สามพราน', '0855888855');

-- --------------------------------------------------------

--
-- Table structure for table `Detail_Product`
--

CREATE TABLE `Detail_Product` (
  `P_ID` varchar(10) COLLATE tis620_bin NOT NULL,
  `Color_ID` varchar(20) COLLATE tis620_bin NOT NULL,
  `Mini_amount` int(11) NOT NULL DEFAULT '0',
  `aty_color` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;

--
-- Dumping data for table `Detail_Product`
--

INSERT INTO `Detail_Product` (`P_ID`, `Color_ID`, `Mini_amount`, `aty_color`) VALUES
('PR001', 'Color01', 800, 0),
('PR001', 'Color02', 800, 0),
('PR002', 'Color03', 600, 0),
('PR003', 'Color04', 400, 0),
('PR004', 'Color05', 300, 0),
('PR004', 'Color06', 300, 0),
('PR004', 'Color07', 300, 0),
('PR005', 'Color05', 200, 0),
('PR005', 'Color08', 200, 0),
('PR006', 'Color07', 0, 0),
('PR006', 'Color08', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Employee`
--

CREATE TABLE `Employee` (
  `Emp_ID` varchar(10) COLLATE tis620_bin NOT NULL,
  `Emp_name` varchar(20) COLLATE tis620_bin NOT NULL,
  `Emp_position` varchar(20) COLLATE tis620_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;

--
-- Dumping data for table `Employee`
--

INSERT INTO `Employee` (`Emp_ID`, `Emp_name`, `Emp_position`) VALUES
('S11', 'นายสมชาย', 'ฝ่ายขาย'),
('S12', 'นายสมศักดิ์', 'ฝ่ายขาย'),
('S13', 'นางสมสมร', 'ฝ่ายขาย'),
('S21', 'นางสาวพรศรี', 'ฝ่ายจัดซื้อ'),
('S22', 'นางพรพรรณ', 'ฝ่ายจัดซื้อ'),
('S31', 'นายยิ่งยง', 'ฝ่ายผลิต'),
('S32', 'นายบัวขาว', 'ฝ่ายผลิต'),
('S41', 'นายนิมิต', 'ผู้จัดการ'),
('S42', 'นางประนอม', 'ผู้จัดการ');

-- --------------------------------------------------------

--
-- Table structure for table `Follow_up`
--

CREATE TABLE `Follow_up` (
  `F_ID` varchar(20) COLLATE tis620_bin NOT NULL,
  `Q_ID` varchar(20) COLLATE tis620_bin NOT NULL,
  `F_date` date NOT NULL,
  `F_status` varchar(100) COLLATE tis620_bin NOT NULL,
  `F_note` varchar(100) COLLATE tis620_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;

--
-- Dumping data for table `Follow_up`
--

INSERT INTO `Follow_up` (`F_ID`, `Q_ID`, `F_date`, `F_status`, `F_note`) VALUES
('F001', '11001', '2021-07-27', 'ยังไม่ตัดสินใจ', ''),
('F002', '11002', '2021-07-27', 'ยกเลิก', 'ใช้เวลาผลิตนาน'),
('F003', '11003', '2021-07-27', 'ยังไม่ตัดสินใจ', ''),
('F004', '11004', '2021-07-27', 'ยังไม่ตัดสินใจ', ''),
('F005', '11005', '2021-07-27', 'ตกลง', ''),
('F006', '11006', '2021-07-27', 'ตกลง', ''),
('F007', '11007', '2021-07-27', 'ตกลง', ''),
('F008', '11008', '2021-07-27', 'ตกลง', ''),
('F009', '11009', '2021-07-27', 'ตกลง', ''),
('F010', '11010', '2021-07-27', 'ยังไม่ตัดสินใจ', ''),
('F011', '11001', '2021-07-30', 'ยกเลิก', 'ราคาสูง'),
('F012', '11003', '2021-07-30', 'ยังไม่ตัดสินใจ\r\n', ''),
('F013', '11004', '2021-07-30', 'ตกลง', ''),
('F014', '11010', '2021-07-30', 'ยังไม่ตัดสินใจ', ''),
('F015', '11010', '2021-07-31', 'ตกลง', '');

-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE `Product` (
  `P_ID` varchar(10) COLLATE tis620_bin NOT NULL,
  `P_name` varchar(100) COLLATE tis620_bin NOT NULL,
  `P_Detail` varchar(100) COLLATE tis620_bin NOT NULL,
  `P_manage` varchar(100) COLLATE tis620_bin NOT NULL,
  `C_name` varchar(100) COLLATE tis620_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`P_ID`, `P_name`, `P_Detail`, `P_manage`, `C_name`) VALUES
('PR001', 'ชุดเครื่องเขียน "Back to Nature" ', 'ดินสอ ปากกา กระดาษ ยางลบ ไม้บรรทัดไม้\r\nไผ่ ไฮไลท์ กบเหลาไม้ Eco Bag', 'สินค้าสต๊อกขั้นต่่า 800', 'เครื่องเขียน'),
('PR002', '"Leaf Message" memo box กล่องกระดาษโน้ต ดินสอ', 'กระดาษโน้ต 150 แผ่น ดินสอ 3.5 นิ้ว', ' สินค้าสต๊อกขั้นต่่า 600', 'เครื่องเขียน'),
('PR003', 'Natural Post it', 'Post it 3x3" และ 1x3" อย่างละ 50 แผ่น', 'สินค้าสต๊อกขั้นต่่า 400', 'เครื่องเขียน'),
('PR004', '"recycle pen" ปากการีไซเคิล', 'ปากกาแบบกด ด้ามท่าจากกระดาษรีไซเคิลม้วน\r\nเป็นโรล หมึกสีน้่าเงิน', 'สินค้าสต๊อกขั้นต่ำ 300', 'เครื่องเขียน'),
('PR005', 'พัดลมมือถือเด็กอ้วน', 'พัดลมมือถือรูปเด็กอ้วน ขนาดกะทัดรัด', 'สินค้าสต๊อกขั้นต่่า 200', 'พัดลมมือถือ'),
('PR006', 'พัดลมมือถือcool\r\n', 'พัดลมมือถือสีใส ปุ่มเปิดด้านข้าง ', 'by order', 'พัดลมมือถือ');

-- --------------------------------------------------------

--
-- Table structure for table `Product_list`
--

CREATE TABLE `Product_list` (
  `PL_ID` varchar(10) COLLATE tis620_bin NOT NULL,
  `Q_ID` varchar(20) COLLATE tis620_bin NOT NULL,
  `P_ID` varchar(10) COLLATE tis620_bin NOT NULL,
  `Color_ID` varchar(10) COLLATE tis620_bin NOT NULL,
  `NumOfProduct` int(20) NOT NULL DEFAULT '0',
  `NumColorScreen` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;

--
-- Dumping data for table `Product_list`
--

INSERT INTO `Product_list` (`PL_ID`, `Q_ID`, `P_ID`, `Color_ID`, `NumOfProduct`, `NumColorScreen`) VALUES
('PL001', '11001', 'PR004', 'Color05', 450, 2),
('PL002', '11002', 'PR004', 'Color06', 580, 1),
('PL003', '11003', 'PR005', 'Color08', 1200, 2),
('PL004', '11004', 'PR006', 'Color08', 1500, 1),
('PL005', '11005', 'PR004', 'Color05', 500, 2),
('PL006', '11005', 'PR004', 'Color06', 800, 2),
('PL007', '11005', 'PR005', 'Color08', 200, 2),
('PL008', '11005', 'PR006', 'Color07', 1500, 1),
('PL009', '11006', 'PR004', 'Color05', 180, 2),
('PL010', '11006', 'PR004', 'Color06', 400, 2),
('PL011', '11006', 'PR005', 'Color08', 600, 2),
('PL012', '11007', 'PR002', 'Color03', 200, 3),
('PL013', '11008', 'PR003', 'Color04', 600, 1),
('PL014', '11009', 'PR004', 'Color07', 440, 1),
('PL015', '11009', 'PR005', 'Color08', 850, 1),
('PL016', '11010', 'PR004', 'Color06', 200, 2),
('PL017', '11010', 'PR004', 'Color05', 670, 1),
('PL018', '11010', 'PR006', 'Color08', 900, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Purchase`
--

CREATE TABLE `Purchase` (
  `PC_ID` varchar(20) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL,
  `PC_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Purchase`
--

INSERT INTO `Purchase` (`PC_ID`, `PC_date`) VALUES
('PC01', '2021-07-08'),
('PC02', '2021-07-09'),
('PC03', '2021-07-10'),
('PC04', '2021-08-05'),
('PC05', '2021-08-05');

-- --------------------------------------------------------

--
-- Table structure for table `Purchase_detail`
--

CREATE TABLE `Purchase_detail` (
  `PD_ID` varchar(20) COLLATE tis620_bin NOT NULL,
  `PC_ID` varchar(20) COLLATE tis620_bin NOT NULL,
  `P_ID` varchar(10) COLLATE tis620_bin NOT NULL,
  `Color_ID` varchar(20) COLLATE tis620_bin NOT NULL,
  `PD_NumOfProduct` int(20) NOT NULL DEFAULT '0',
  `PD_status` varchar(100) COLLATE tis620_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;

--
-- Dumping data for table `Purchase_detail`
--

INSERT INTO `Purchase_detail` (`PD_ID`, `PC_ID`, `P_ID`, `Color_ID`, `PD_NumOfProduct`, `PD_status`) VALUES
('PD01', 'PC01', 'PR001', 'Color01', 500, 'รับของแล้ว'),
('PD02', 'PC01', 'PR001', 'Color02', 1000, 'รับของแล้ว'),
('PD03', 'PC01', 'PR003', 'Color04', 700, 'รับของแล้ว'),
('PD04', 'PC01', 'PR004', 'Color06', 300, 'รับของแล้ว'),
('PD05', 'PC01', 'PR005', 'Color08', 1000, 'รับของแล้ว'),
('PD06', 'PC02', 'PR001', 'Color02', 600, 'รับของแล้ว'),
('PD07', 'PC02', 'PR003', 'Color04', 300, 'รับของแล้ว'),
('PD08', 'PC02', 'PR004', 'Color05', 1000, 'รับของแล้ว'),
('PD09', 'PC03', 'PR001', 'Color02', 400, 'รับของแล้ว'),
('PD10', 'PC03', 'PR002', 'Color03', 500, 'รับของแล้ว'),
('PD11', 'PC03', 'PR005', 'Color08', 500, 'รับของแล้ว'),
('PD12', 'PC03', 'PR005', 'Color05', 1000, 'รับของแล้ว'),
('PD13', 'PC04', 'PR004', 'Color05', 1000, 'รับของแล้ว'),
('PD14', 'PC04', 'PR004', 'Color06', 1200, 'รับของแล้ว'),
('PD15', 'PC05', 'PR006', 'Color08', 800, 'รอจัดส่ง');

-- --------------------------------------------------------

--
-- Table structure for table `Purchase_order`
--

CREATE TABLE `Purchase_order` (
  `Q_ID` varchar(10) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL,
  `PO_date` date NOT NULL,
  `Emp_ID` varchar(20) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL,
  `PO_status` varchar(100) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL,
  `PO_percent` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Purchase_order`
--

INSERT INTO `Purchase_order` (`Q_ID`, `PO_date`, `Emp_ID`, `PO_status`, `PO_percent`) VALUES
('11005', '2021-08-03', 'S41', 'อนุมัติ', 1),
('11006', '2021-08-03', 'S42', 'อนุมัติ', 1),
('11009', '2021-08-03', 'S41', 'อนุมัติ', 2),
('11010', '2021-08-03', 'S41', 'อนุมัติ', 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q01`
--
CREATE TABLE `Q01` (
`Emp_ID` varchar(10)
,`Emp_name` varchar(20)
,`Emp_position` varchar(20)
,`username` varchar(10)
,`password` varchar(14)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q02`
--
CREATE TABLE `Q02` (
`Emp_position` varchar(20)
,`numOfpeople` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q03`
--
CREATE TABLE `Q03` (
`Cus_ID` varchar(20)
,`Cus_name` varchar(20)
,`Cus_Addr` varchar(20)
,`Cus_Tel` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q04`
--
CREATE TABLE `Q04` (
`P_id` varchar(10)
,`P_name` varchar(100)
,`price` int(11)
,`total_price` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q05_1`
--
CREATE TABLE `Q05_1` (
`P_id` varchar(10)
,`P_name` varchar(100)
,`price` int(11)
,`total_price` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q05_2`
--
CREATE TABLE `Q05_2` (
`P_id` varchar(10)
,`P_name` varchar(100)
,`price` int(11)
,`total_price` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q05_3`
--
CREATE TABLE `Q05_3` (
`P_id` varchar(10)
,`P_name` varchar(100)
,`price` int(11)
,`total_price` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q05_4`
--
CREATE TABLE `Q05_4` (
`P_id` varchar(10)
,`P_name` varchar(100)
,`price` int(11)
,`total_price` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q05_5`
--
CREATE TABLE `Q05_5` (
`P_id` varchar(10)
,`P_name` varchar(100)
,`price` int(11)
,`total_price` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q06`
--
CREATE TABLE `Q06` (
`P_ID` varchar(10)
,`P_name` varchar(100)
,`C_name` varchar(100)
,`Color_name` varchar(20)
,`Mini_amount` int(11)
,`จำนวนครั่งที่ซื้อ` bigint(21)
,`จำนวนทั้งหมด` decimal(41,0)
,`จำนวนที่ต้องสั่ง` decimal(42,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q07`
--
CREATE TABLE `Q07` (
`รหัส` varchar(10)
,`ชื่อสินค้า` varchar(100)
,`หมวดสินค้า` varchar(100)
,`จำนวนสี` bigint(21)
,`จำนวนทีมีรวม` decimal(63,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q08`
--
CREATE TABLE `Q08` (
`P_ID` varchar(10)
,`P_name` varchar(100)
,`C_name` varchar(100)
,`Color_name` varchar(20)
,`Mini_amount` int(11)
,`จำนวนทั้งหมด` decimal(41,0)
,`จำนวนที่ต้องสั่ง` decimal(42,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q09`
--
CREATE TABLE `Q09` (
`Q_ID` varchar(20)
,`P_ID` varchar(10)
,`Color_Name` varchar(20)
,`NumOfProduct` int(20)
,`ราคาต่อชิ้น` double
,`ราคารวม` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q10`
--
CREATE TABLE `Q10` (
`P_ID` varchar(10)
,`P_name` varchar(100)
,`Color_Name` varchar(20)
,`จำนวนสินค้าในใบเสนอ` decimal(41,0)
,`จำนวนสินค้า` decimal(41,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q11`
--
CREATE TABLE `Q11` (
`Q_ID` varchar(10)
,`Q_date` date
,`Cus_name` varchar(20)
,`ราคารวม` double
,`ราคารวมVat` double
,`เงินมัดจำ` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q12`
--
CREATE TABLE `Q12` (
`Emp_name` varchar(20)
,`จำนวนใบเสนอราคา` bigint(21)
,`ยอดขายรวม` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q13`
--
CREATE TABLE `Q13` (
`F_status` varchar(100)
,`จำนวนใบเสนอราคา` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q14`
--
CREATE TABLE `Q14` (
`Q_ID` varchar(20)
,`F_date` date
,`F_status` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q15`
--
CREATE TABLE `Q15` (
`Q_ID` varchar(20)
,`F_date` date
,`F_status` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q16`
--
CREATE TABLE `Q16` (
`Q_ID` varchar(20)
,`CS_date` date
,`ยอดชำระ` double
,`ยอดค้างชำระ` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q17`
--
CREATE TABLE `Q17` (
`Q_ID` varchar(20)
,`P_ID` varchar(10)
,`P_name` varchar(100)
,`Color_name` varchar(20)
,`NumOfProduct` int(20)
,`จำนวนผลิตจริง` decimal(16,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q18`
--
CREATE TABLE `Q18` (
`P_ID` varchar(10)
,`P_name` varchar(100)
,`Color_name` varchar(20)
,`จำนวนคงเหลือในคลัง` decimal(41,0)
,`จำนวนสินค้าที่อยู่ระหว่างการสั่งซื้อ` decimal(41,0)
,`จำนวนที่รอผลิต` decimal(38,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q19`
--
CREATE TABLE `Q19` (
`P_ID` varchar(10)
,`P_name` varchar(100)
,`Color_name` varchar(20)
,`จำนวนที่ต้องสั่งเพิ่ม` decimal(44,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q20`
--
CREATE TABLE `Q20` (
`Q_ID` varchar(20)
,`CS_date` date
,`ยอดชำระเงิน` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q21`
--
CREATE TABLE `Q21` (
`P_ID` varchar(10)
,`P_name` varchar(100)
,`จำนวนผลิตเสร็จ` decimal(38,0)
,`จำนวนที่จัดส่ง` decimal(41,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q22`
--
CREATE TABLE `Q22` (
`Q_ID` varchar(10)
,`ราคารวมVat` double
,`ยอดชำระ` decimal(18,2)
,`ยอดค้างชำระ` decimal(18,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q23`
--
CREATE TABLE `Q23` (
`P_ID` varchar(10)
,`P_name` varchar(100)
,`จำนวนขาย` decimal(41,0)
,`จำนวนเผื่อ` decimal(42,0)
,`ราคาขายรวม` double
);

-- --------------------------------------------------------

--
-- Table structure for table `Quotation`
--

CREATE TABLE `Quotation` (
  `Q_ID` varchar(10) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL,
  `Q_date` date NOT NULL,
  `Emp_ID` varchar(20) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL,
  `Cus_ID` varchar(20) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL,
  `Q_payment` varchar(20) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL,
  `Q_percent` int(20) NOT NULL DEFAULT '0',
  `Q_statusCus` varchar(20) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Quotation`
--

INSERT INTO `Quotation` (`Q_ID`, `Q_date`, `Emp_ID`, `Cus_ID`, `Q_payment`, `Q_percent`, `Q_statusCus`) VALUES
('11001', '2021-07-11', 'S11', 'C01', 'มัดจำ 40% ', 40, ''),
('11002', '2021-07-12', 'S12', 'C02', 'เครดิต 30 วัน', 0, ''),
('11003', '2021-07-13', 'S13', 'C03', 'มัดจำ 30%', 30, ''),
('11004', '2021-07-14', 'S11', 'C04', 'เครดิต 30 วัน ', 0, ''),
('11005', '2021-07-15', 'S12', 'C01', 'เครดิต 30 วัน ', 0, ''),
('11006', '2021-07-16', 'S13', 'C02', 'มัดจำ 40%', 40, ''),
('11007', '2021-07-17', 'S11', 'C03', 'มัดจำ 30%', 30, ''),
('11008', '2021-07-18', 'S12', 'C04', 'มัดจำ 40%', 40, ''),
('11009', '2021-07-19', 'S13', 'C01', 'เครดิต 30 วัน ', 0, ''),
('11010', '2021-07-20', 'S11', 'C02', 'มัดจำ 50%', 50, '');

-- --------------------------------------------------------

--
-- Table structure for table `rate_price`
--

CREATE TABLE `rate_price` (
  `R_id` varchar(20) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL,
  `P_ID` varchar(10) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL,
  `min_qty` int(11) NOT NULL,
  `max_qty` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `rateScreen` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rate_price`
--

INSERT INTO `rate_price` (`R_id`, `P_ID`, `min_qty`, `max_qty`, `price`, `rateScreen`) VALUES
('R01_1', 'PR001', 1, 50, 150, 18),
('R01_2', 'PR001', 51, 100, 120, 15),
('R01_3', 'PR001', 101, 200, 98, 12),
('R01_4', 'PR001', 201, 400, 90, 10),
('R01_5', 'PR001', 401, 600, 86, 9),
('R01_6', 'PR001', 601, 800, 83, 8),
('R01_7', 'PR001', 801, 32767, 81, 7),
('R02_1', 'PR002', 1, 100, 69, 9),
('R02_2', 'PR002', 101, 200, 63, 7),
('R02_3', 'PR002', 201, 300, 56, 6),
('R02_4', 'PR002', 301, 500, 50, 5.5),
('R02_5', 'PR002', 501, 800, 49, 5),
('R02_6', 'PR002', 801, 32767, 48, 4.5),
('R03_1', 'PR003', 1, 100, 57, 9),
('R03_2', 'PR003', 101, 200, 50, 8),
('R03_3', 'PR003', 201, 300, 45, 7.5),
('R03_4', 'PR003', 301, 500, 39, 6),
('R03_5', 'PR003', 501, 800, 37, 5),
('R03_6', 'PR003', 801, 32767, 34, 4.5),
('R04_1', 'PR004', 1, 50, 30, 9),
('R04_2', 'PR004', 51, 100, 20, 8),
('R04_3', 'PR004', 101, 200, 18, 7),
('R04_4', 'PR004', 201, 300, 15, 7.5),
('R04_5', 'PR004', 301, 500, 12, 6),
('R04_6', 'PR004', 501, 800, 10, 5),
('R04_7', 'PR004', 801, 32767, 8, 4),
('R05_1', 'PR005', 1, 50, 80, 20),
('R05_2', 'PR005', 51, 100, 75, 18),
('R05_3', 'PR005', 101, 200, 68, 14),
('R05_4', 'PR005', 201, 500, 64, 12),
('R05_5', 'PR005', 501, 800, 60, 10),
('R05_6', 'PR005', 801, 32767, 58, 9),
('R06_1', 'PR006', 1, 100, 75, 25),
('R06_2', 'PR006', 101, 300, 70, 22),
('R06_3', 'PR006', 301, 500, 64, 20),
('R06_4', 'PR006', 501, 700, 62, 16),
('R06_5', 'PR006', 701, 800, 64, 15),
('R06_6', 'PR006', 801, 32767, 52, 12);

-- --------------------------------------------------------

--
-- Stand-in structure for view `stock`
--
CREATE TABLE `stock` (
`P_ID` varchar(10)
,`P_name` varchar(100)
,`C_name` varchar(100)
,`Color_name` varchar(20)
,`Color_ID` varchar(20)
,`Mini_amount` int(11)
,`จำนวนครั่งที่ซื้อ` bigint(21)
,`จำนวนทั้งหมด` decimal(41,0)
,`จำนวนสินค้าที่อยู่ระหว่างการสั่งซื้อ` decimal(41,0)
);

-- --------------------------------------------------------

--
-- Table structure for table `Update_status`
--

CREATE TABLE `Update_status` (
  `PL_ID` varchar(20) COLLATE tis620_bin NOT NULL,
  `วันเบิก` date NOT NULL,
  `ผลิตเสร็จ` date DEFAULT NULL,
  `ผลิตเสร็จ_id` varchar(10) COLLATE tis620_bin NOT NULL DEFAULT '1',
  `สถานะการจัดส่ง` varchar(100) COLLATE tis620_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;

--
-- Dumping data for table `Update_status`
--

INSERT INTO `Update_status` (`PL_ID`, `วันเบิก`, `ผลิตเสร็จ`, `ผลิตเสร็จ_id`, `สถานะการจัดส่ง`) VALUES
('PL005', '2021-08-15', '2021-08-20', '1', 'จัดส่งแล้ว'),
('PL006', '2021-08-15', '2021-08-20', '1', 'จัดส่งแล้ว'),
('PL007', '2021-08-15', '2021-08-20', '1', 'จัดส่งแล้ว'),
('PL008', '2021-08-15', '2021-08-20', '1', 'จัดส่งแล้ว'),
('PL009', '2021-08-15', '2021-08-22', '1', 'จัดส่งแล้ว'),
('PL010', '2021-08-15', '2021-08-22', '1', 'จัดส่งแล้ว'),
('PL011', '2021-08-15', '2021-08-22', '1', 'จัดส่งแล้ว'),
('PL014', '2021-08-15', '2021-08-23', '1', 'ยังไม่จัดส่ง'),
('PL015', '2021-08-15', '2021-08-23', '1', 'ยังไม่จัดส่ง'),
('PL016', '2021-08-15', NULL, '0', NULL);

-- --------------------------------------------------------

--
-- Structure for view `Q01`
--
DROP TABLE IF EXISTS `Q01`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_015`@`%` SQL SECURITY DEFINER VIEW `Q01`  AS  select `Employee`.`Emp_ID` AS `Emp_ID`,`Employee`.`Emp_name` AS `Emp_name`,`Employee`.`Emp_position` AS `Emp_position`,`Employee`.`Emp_ID` AS `username`,concat(`Employee`.`Emp_ID`,'1111') AS `password` from `Employee` ;

-- --------------------------------------------------------

--
-- Structure for view `Q02`
--
DROP TABLE IF EXISTS `Q02`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_015`@`%` SQL SECURITY DEFINER VIEW `Q02`  AS  select `Employee`.`Emp_position` AS `Emp_position`,count(`Employee`.`Emp_ID`) AS `numOfpeople` from `Employee` group by `Employee`.`Emp_position` ;

-- --------------------------------------------------------

--
-- Structure for view `Q03`
--
DROP TABLE IF EXISTS `Q03`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_015`@`%` SQL SECURITY DEFINER VIEW `Q03`  AS  select `customer`.`Cus_ID` AS `Cus_ID`,`customer`.`Cus_name` AS `Cus_name`,`customer`.`Cus_Addr` AS `Cus_Addr`,`customer`.`Cus_Tel` AS `Cus_Tel` from `customer` ;

-- --------------------------------------------------------

--
-- Structure for view `Q04`
--
DROP TABLE IF EXISTS `Q04`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_015`@`%` SQL SECURITY DEFINER VIEW `Q04`  AS  select `Product`.`P_ID` AS `P_id`,`Product`.`P_name` AS `P_name`,`rate_price`.`price` AS `price`,((150 * `rate_price`.`price`) + (150 * `rate_price`.`rateScreen`)) AS `total_price` from (`Product` join `rate_price` on((`Product`.`P_ID` = `rate_price`.`P_ID`))) where ((`Product`.`P_ID` = 'PR001') and (150 between `rate_price`.`min_qty` and `rate_price`.`max_qty`)) ;

-- --------------------------------------------------------

--
-- Structure for view `Q05_1`
--
DROP TABLE IF EXISTS `Q05_1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_015`@`%` SQL SECURITY DEFINER VIEW `Q05_1`  AS  select `Product`.`P_ID` AS `P_id`,`Product`.`P_name` AS `P_name`,`rate_price`.`price` AS `price`,((50 * `rate_price`.`price`) + ((50 * `rate_price`.`rateScreen`) * (1 - 1))) AS `total_price` from (`Product` join `rate_price` on((`Product`.`P_ID` = `rate_price`.`P_ID`))) where (50 between `rate_price`.`min_qty` and `rate_price`.`max_qty`) ;

-- --------------------------------------------------------

--
-- Structure for view `Q05_2`
--
DROP TABLE IF EXISTS `Q05_2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_015`@`%` SQL SECURITY DEFINER VIEW `Q05_2`  AS  select `Product`.`P_ID` AS `P_id`,`Product`.`P_name` AS `P_name`,`rate_price`.`price` AS `price`,((50 * `rate_price`.`price`) + ((50 * `rate_price`.`rateScreen`) * (3 - 1))) AS `total_price` from (`Product` join `rate_price` on((`Product`.`P_ID` = `rate_price`.`P_ID`))) where (50 between `rate_price`.`min_qty` and `rate_price`.`max_qty`) ;

-- --------------------------------------------------------

--
-- Structure for view `Q05_3`
--
DROP TABLE IF EXISTS `Q05_3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_015`@`%` SQL SECURITY DEFINER VIEW `Q05_3`  AS  select `Product`.`P_ID` AS `P_id`,`Product`.`P_name` AS `P_name`,`rate_price`.`price` AS `price`,((400 * `rate_price`.`price`) + ((400 * `rate_price`.`rateScreen`) * (4 - 1))) AS `total_price` from (`Product` join `rate_price` on((`Product`.`P_ID` = `rate_price`.`P_ID`))) where (400 between `rate_price`.`min_qty` and `rate_price`.`max_qty`) ;

-- --------------------------------------------------------

--
-- Structure for view `Q05_4`
--
DROP TABLE IF EXISTS `Q05_4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_015`@`%` SQL SECURITY DEFINER VIEW `Q05_4`  AS  select `Product`.`P_ID` AS `P_id`,`Product`.`P_name` AS `P_name`,`rate_price`.`price` AS `price`,((1000 * `rate_price`.`price`) + ((1000 * `rate_price`.`rateScreen`) * (1 - 1))) AS `total_price` from (`Product` join `rate_price` on((`Product`.`P_ID` = `rate_price`.`P_ID`))) where (1000 between `rate_price`.`min_qty` and `rate_price`.`max_qty`) ;

-- --------------------------------------------------------

--
-- Structure for view `Q05_5`
--
DROP TABLE IF EXISTS `Q05_5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_015`@`%` SQL SECURITY DEFINER VIEW `Q05_5`  AS  select `Product`.`P_ID` AS `P_id`,`Product`.`P_name` AS `P_name`,`rate_price`.`price` AS `price`,((1000 * `rate_price`.`price`) + ((1000 * `rate_price`.`rateScreen`) * (3 - 1))) AS `total_price` from (`Product` join `rate_price` on((`Product`.`P_ID` = `rate_price`.`P_ID`))) where (1000 between `rate_price`.`min_qty` and `rate_price`.`max_qty`) ;

-- --------------------------------------------------------

--
-- Structure for view `Q06`
--
DROP TABLE IF EXISTS `Q06`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_015`@`%` SQL SECURITY DEFINER VIEW `Q06`  AS  select `Product`.`P_ID` AS `P_ID`,`Product`.`P_name` AS `P_name`,`Product`.`C_name` AS `C_name`,`Color`.`Color_name` AS `Color_name`,`Detail_Product`.`Mini_amount` AS `Mini_amount`,count(`Purchase_detail`.`P_ID`) AS `จำนวนครั่งที่ซื้อ`,sum(if(isnull(`Purchase_detail`.`PD_NumOfProduct`),0,`Purchase_detail`.`PD_NumOfProduct`)) AS `จำนวนทั้งหมด`,if((`Detail_Product`.`Mini_amount` > sum(if(isnull(`Purchase_detail`.`PD_NumOfProduct`),0,`Purchase_detail`.`PD_NumOfProduct`))),(`Detail_Product`.`Mini_amount` - sum(if(isnull(`Purchase_detail`.`PD_NumOfProduct`),0,`Purchase_detail`.`PD_NumOfProduct`))),0) AS `จำนวนที่ต้องสั่ง` from (((`Product` join `Detail_Product` on((`Product`.`P_ID` = `Detail_Product`.`P_ID`))) join `Color` on((`Detail_Product`.`Color_ID` = `Color`.`Color_ID`))) left join `Purchase_detail` on(((`Purchase_detail`.`Color_ID` = `Detail_Product`.`Color_ID`) and (`Purchase_detail`.`P_ID` = `Detail_Product`.`P_ID`)))) group by `Product`.`P_ID`,`Product`.`P_name`,`Color`.`Color_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `Q07`
--
DROP TABLE IF EXISTS `Q07`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_015`@`%` SQL SECURITY DEFINER VIEW `Q07`  AS  select `Q06`.`P_ID` AS `รหัส`,`Q06`.`P_name` AS `ชื่อสินค้า`,`Q06`.`C_name` AS `หมวดสินค้า`,count(`Q06`.`Color_name`) AS `จำนวนสี`,sum(`Q06`.`จำนวนทั้งหมด`) AS `จำนวนทีมีรวม` from `Q06` group by `Q06`.`P_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `Q08`
--
DROP TABLE IF EXISTS `Q08`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_015`@`%` SQL SECURITY DEFINER VIEW `Q08`  AS  select `Q06`.`P_ID` AS `P_ID`,`Q06`.`P_name` AS `P_name`,`Q06`.`C_name` AS `C_name`,`Q06`.`Color_name` AS `Color_name`,`Q06`.`Mini_amount` AS `Mini_amount`,`Q06`.`จำนวนทั้งหมด` AS `จำนวนทั้งหมด`,`Q06`.`จำนวนที่ต้องสั่ง` AS `จำนวนที่ต้องสั่ง` from `Q06` ;

-- --------------------------------------------------------

--
-- Structure for view `Q09`
--
DROP TABLE IF EXISTS `Q09`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_015`@`%` SQL SECURITY DEFINER VIEW `Q09`  AS  select `Product_list`.`Q_ID` AS `Q_ID`,`Product_list`.`P_ID` AS `P_ID`,`Color`.`Color_name` AS `Color_Name`,`Product_list`.`NumOfProduct` AS `NumOfProduct`,if((`Product_list`.`NumColorScreen` > 1),((`rate_price`.`price` + (`Product_list`.`NumColorScreen` * `rate_price`.`rateScreen`)) - `rate_price`.`rateScreen`),`rate_price`.`price`) AS `ราคาต่อชิ้น`,(if((`Product_list`.`NumColorScreen` > 1),((`rate_price`.`price` + (`Product_list`.`NumColorScreen` * `rate_price`.`rateScreen`)) - `rate_price`.`rateScreen`),`rate_price`.`price`) * `Product_list`.`NumOfProduct`) AS `ราคารวม` from (((`Product_list` join `Product` on((`Product_list`.`P_ID` = `Product`.`P_ID`))) join `rate_price` on((`Product_list`.`P_ID` = `rate_price`.`P_ID`))) join `Color` on((`Product_list`.`Color_ID` = `Color`.`Color_ID`))) where (`Product_list`.`NumOfProduct` between `rate_price`.`min_qty` and `rate_price`.`max_qty`) ;

-- --------------------------------------------------------

--
-- Structure for view `Q10`
--
DROP TABLE IF EXISTS `Q10`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_015`@`%` SQL SECURITY DEFINER VIEW `Q10`  AS  select `Q06`.`P_ID` AS `P_ID`,`Q06`.`P_name` AS `P_name`,`Q06`.`Color_name` AS `Color_Name`,sum(if(isnull(`PP`.`NumOfProduct`),0,`PP`.`NumOfProduct`)) AS `จำนวนสินค้าในใบเสนอ`,`Q06`.`จำนวนทั้งหมด` AS `จำนวนสินค้า` from (`Q06` left join (select `Product_list`.`NumOfProduct` AS `NumOfProduct`,`Color`.`Color_name` AS `Color_name`,`Product_list`.`P_ID` AS `P_ID` from (`Product_list` left join `Color` on((`Product_list`.`Color_ID` = `Color`.`Color_ID`)))) `PP` on(((`Q06`.`P_ID` = `PP`.`P_ID`) and (`Q06`.`Color_name` = `PP`.`Color_name`)))) group by `Q06`.`P_ID`,`Q06`.`P_name`,`Q06`.`Color_name`,`จำนวนสินค้า` ;

-- --------------------------------------------------------

--
-- Structure for view `Q11`
--
DROP TABLE IF EXISTS `Q11`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_015`@`%` SQL SECURITY DEFINER VIEW `Q11`  AS  select `Quotation`.`Q_ID` AS `Q_ID`,`Quotation`.`Q_date` AS `Q_date`,`customer`.`Cus_name` AS `Cus_name`,sum(((`Product_list`.`NumOfProduct` * `rate_price`.`price`) + ((`Product_list`.`NumOfProduct` * `rate_price`.`rateScreen`) * (`Product_list`.`NumColorScreen` - 1)))) AS `ราคารวม`,sum((((`Product_list`.`NumOfProduct` * `rate_price`.`price`) + ((`Product_list`.`NumOfProduct` * `rate_price`.`rateScreen`) * (`Product_list`.`NumColorScreen` - 1))) * (107 / 100))) AS `ราคารวมVat`,if((`Quotation`.`Q_percent` = 0),0,sum(((((`Product_list`.`NumOfProduct` * `rate_price`.`price`) + ((`Product_list`.`NumOfProduct` * `rate_price`.`rateScreen`) * (`Product_list`.`NumColorScreen` - 1))) * (107 / 100)) * (`Quotation`.`Q_percent` / 100)))) AS `เงินมัดจำ` from (((`Quotation` join `customer` on((`Quotation`.`Cus_ID` = `customer`.`Cus_ID`))) join `Product_list` on((`Quotation`.`Q_ID` = `Product_list`.`Q_ID`))) join `rate_price` on((`Product_list`.`P_ID` = `rate_price`.`P_ID`))) where (`Product_list`.`NumOfProduct` between `rate_price`.`min_qty` and `rate_price`.`max_qty`) group by `Quotation`.`Q_ID`,`Quotation`.`Q_date`,`customer`.`Cus_name` ;

-- --------------------------------------------------------

--
-- Structure for view `Q12`
--
DROP TABLE IF EXISTS `Q12`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_015`@`%` SQL SECURITY DEFINER VIEW `Q12`  AS  select `Employee`.`Emp_name` AS `Emp_name`,count(`Q11`.`Q_ID`) AS `จำนวนใบเสนอราคา`,sum(`Q11`.`ราคารวม`) AS `ยอดขายรวม` from ((`Quotation` join `Employee` on((`Quotation`.`Emp_ID` = `Employee`.`Emp_ID`))) join `Q11` on(((`Quotation`.`Q_ID` = `Q11`.`Q_ID`) and (`Quotation`.`Q_date` = `Q11`.`Q_date`)))) group by `Quotation`.`Emp_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `Q13`
--
DROP TABLE IF EXISTS `Q13`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_015`@`%` SQL SECURITY DEFINER VIEW `Q13`  AS  select `Follow_up`.`F_status` AS `F_status`,count(`Follow_up`.`F_status`) AS `จำนวนใบเสนอราคา` from (`Follow_up` join (select `Follow_up`.`Q_ID` AS `Q_ID`,max(`Follow_up`.`F_date`) AS `date` from `Follow_up` group by `Follow_up`.`Q_ID`) `a` on(((`Follow_up`.`F_date` = `a`.`date`) and (`Follow_up`.`Q_ID` = `a`.`Q_ID`)))) group by `Follow_up`.`F_status` ;

-- --------------------------------------------------------

--
-- Structure for view `Q14`
--
DROP TABLE IF EXISTS `Q14`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_015`@`%` SQL SECURITY DEFINER VIEW `Q14`  AS  select `Follow_up`.`Q_ID` AS `Q_ID`,`Follow_up`.`F_date` AS `F_date`,`Follow_up`.`F_status` AS `F_status` from `Follow_up` order by `Follow_up`.`Q_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `Q15`
--
DROP TABLE IF EXISTS `Q15`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_015`@`%` SQL SECURITY DEFINER VIEW `Q15`  AS  select `Follow_up`.`Q_ID` AS `Q_ID`,`Follow_up`.`F_date` AS `F_date`,`Follow_up`.`F_status` AS `F_status` from (`Follow_up` join (select `Follow_up`.`Q_ID` AS `Q_ID`,max(`Follow_up`.`F_date`) AS `date` from `Follow_up` group by `Follow_up`.`Q_ID`) `a` on(((`Follow_up`.`F_date` = `a`.`date`) and (`Follow_up`.`Q_ID` = `a`.`Q_ID`)))) order by `Follow_up`.`Q_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `Q16`
--
DROP TABLE IF EXISTS `Q16`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_015`@`%` SQL SECURITY DEFINER VIEW `Q16`  AS  select distinct `Close_sale`.`Q_ID` AS `Q_ID`,`Close_sale`.`CS_date` AS `CS_date`,`a`.`ยอดชำระ` AS `ยอดชำระ`,`a`.`ยอดค้างชำระ` AS `ยอดค้างชำระ` from (`Close_sale` join (select `Q11`.`Q_ID` AS `Q_ID`,`Q11`.`ราคารวมVat` AS `ยอดชำระ`,(`Q11`.`ราคารวมVat` - `Q11`.`เงินมัดจำ`) AS `ยอดค้างชำระ` from `Q11`) `a` on((`a`.`Q_ID` = `Close_sale`.`Q_ID`))) where (`Close_sale`.`CS_Status` like '%มัดจำ%') order by `Close_sale`.`Q_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `Q17`
--
DROP TABLE IF EXISTS `Q17`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_015`@`%` SQL SECURITY DEFINER VIEW `Q17`  AS  select `Q09`.`Q_ID` AS `Q_ID`,`Q09`.`P_ID` AS `P_ID`,`Product`.`P_name` AS `P_name`,`Q09`.`Color_Name` AS `Color_name`,`Q09`.`NumOfProduct` AS `NumOfProduct`,ceiling((((100 + `Purchase_order`.`PO_percent`) * `Q09`.`NumOfProduct`) / 100)) AS `จำนวนผลิตจริง` from ((`Q09` join `Product` on((`Q09`.`P_ID` = `Product`.`P_ID`))) join `Purchase_order` on((`Purchase_order`.`Q_ID` = `Q09`.`Q_ID`))) ;

-- --------------------------------------------------------

--
-- Structure for view `Q18`
--
DROP TABLE IF EXISTS `Q18`;
-- in use(#1046 - No database selected)

-- --------------------------------------------------------

--
-- Structure for view `Q19`
--
DROP TABLE IF EXISTS `Q19`;
-- in use(#1046 - No database selected)

-- --------------------------------------------------------

--
-- Structure for view `Q20`
--
DROP TABLE IF EXISTS `Q20`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_015`@`%` SQL SECURITY DEFINER VIEW `Q20`  AS  select `Close_sale`.`Q_ID` AS `Q_ID`,`Close_sale`.`CS_date` AS `CS_date`,sum(((((`Product_list`.`NumOfProduct` * `rate_price`.`price`) + ((`Product_list`.`NumOfProduct` * `rate_price`.`rateScreen`) * (`Product_list`.`NumColorScreen` - 1))) * (107 / 100)) * (`Close_sale`.`CS_percentpay` / 100))) AS `ยอดชำระเงิน` from ((`Close_sale` join `Product_list` on((`Close_sale`.`Q_ID` = `Product_list`.`Q_ID`))) join `rate_price` on((`Product_list`.`P_ID` = `rate_price`.`P_ID`))) where (`Product_list`.`NumOfProduct` between `rate_price`.`min_qty` and `rate_price`.`max_qty`) group by `Close_sale`.`Q_ID`,`Close_sale`.`CS_date` ;

-- --------------------------------------------------------

--
-- Structure for view `Q21`
--
DROP TABLE IF EXISTS `Q21`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_015`@`%` SQL SECURITY DEFINER VIEW `Q21`  AS  select `Q17`.`P_ID` AS `P_ID`,`Q17`.`P_name` AS `P_name`,sum((case when (`Update_status`.`ผลิตเสร็จ_id` = 1) then `Q17`.`จำนวนผลิตจริง` else 0 end)) AS `จำนวนผลิตเสร็จ`,sum((case when (`Update_status`.`สถานะการจัดส่ง` = 'จัดส่งแล้ว') then `Q17`.`NumOfProduct` else 0 end)) AS `จำนวนที่จัดส่ง` from ((`Q17` join `Product_list` on(((`Q17`.`Q_ID` = `Product_list`.`Q_ID`) and (`Q17`.`P_ID` = `Product_list`.`P_ID`) and (`Q17`.`NumOfProduct` = `Product_list`.`NumOfProduct`)))) join `Update_status` on((`Product_list`.`PL_ID` = `Update_status`.`PL_ID`))) group by `Q17`.`P_ID`,`Q17`.`P_name` ;

-- --------------------------------------------------------

--
-- Structure for view `Q22`
--
DROP TABLE IF EXISTS `Q22`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_015`@`%` SQL SECURITY DEFINER VIEW `Q22`  AS  select `po`.`Q_ID` AS `Q_ID`,`Q11`.`ราคารวมVat` AS `ราคารวมVat`,cast(round(sum(((if(isnull(`Close_sale`.`CS_percentpay`),0,`Close_sale`.`CS_percentpay`) / 100) * `Q11`.`ราคารวมVat`)),2) as decimal(18,2)) AS `ยอดชำระ`,cast(round((`Q11`.`ราคารวมVat` - sum(((if(isnull(`Close_sale`.`CS_percentpay`),0,`Close_sale`.`CS_percentpay`) / 100) * `Q11`.`ราคารวมVat`))),2) as decimal(18,2)) AS `ยอดค้างชำระ` from ((`Q11` join (select `Purchase_order`.`Q_ID` AS `Q_ID`,`Purchase_order`.`PO_status` AS `PO_status` from `Purchase_order` where (`Purchase_order`.`PO_status` = 'อนุมัติ')) `po` on((`Q11`.`Q_ID` = `po`.`Q_ID`))) left join `Close_sale` on((`Close_sale`.`Q_ID` = `po`.`Q_ID`))) group by `po`.`Q_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `Q23`
--
DROP TABLE IF EXISTS `Q23`;
-- in use(#1046 - No database selected)

-- --------------------------------------------------------

--
-- Structure for view `stock`
--
DROP TABLE IF EXISTS `stock`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_015`@`%` SQL SECURITY DEFINER VIEW `stock`  AS  select `Product`.`P_ID` AS `P_ID`,`Product`.`P_name` AS `P_name`,`Product`.`C_name` AS `C_name`,`Color`.`Color_name` AS `Color_name`,`Color`.`Color_ID` AS `Color_ID`,`Detail_Product`.`Mini_amount` AS `Mini_amount`,count(`Purchase_detail`.`P_ID`) AS `จำนวนครั่งที่ซื้อ`,sum(if((`Purchase_detail`.`PD_status` = 'รับของแล้ว'),if(isnull(`Purchase_detail`.`PD_NumOfProduct`),0,`Purchase_detail`.`PD_NumOfProduct`),0)) AS `จำนวนทั้งหมด`,sum(if((`Purchase_detail`.`PD_status` <> 'รับของแล้ว'),if(isnull(`Purchase_detail`.`PD_NumOfProduct`),0,`Purchase_detail`.`PD_NumOfProduct`),0)) AS `จำนวนสินค้าที่อยู่ระหว่างการสั่งซื้อ` from (((`Product` join `Detail_Product` on((`Product`.`P_ID` = `Detail_Product`.`P_ID`))) join `Color` on((`Detail_Product`.`Color_ID` = `Color`.`Color_ID`))) left join `Purchase_detail` on(((`Purchase_detail`.`Color_ID` = `Detail_Product`.`Color_ID`) and (`Purchase_detail`.`P_ID` = `Detail_Product`.`P_ID`)))) group by `Product`.`P_ID`,`Product`.`P_name`,`Color`.`Color_ID` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Close_sale`
--
ALTER TABLE `Close_sale`
  ADD PRIMARY KEY (`CS_ID`),
  ADD KEY `Q_ID` (`Q_ID`);

--
-- Indexes for table `Color`
--
ALTER TABLE `Color`
  ADD PRIMARY KEY (`Color_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Cus_ID`);

--
-- Indexes for table `Detail_Product`
--
ALTER TABLE `Detail_Product`
  ADD PRIMARY KEY (`P_ID`,`Color_ID`),
  ADD KEY `Color_ID` (`Color_ID`);

--
-- Indexes for table `Employee`
--
ALTER TABLE `Employee`
  ADD PRIMARY KEY (`Emp_ID`);

--
-- Indexes for table `Follow_up`
--
ALTER TABLE `Follow_up`
  ADD PRIMARY KEY (`F_ID`),
  ADD KEY `Q_ID` (`Q_ID`);

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`P_ID`),
  ADD UNIQUE KEY `P_name` (`P_name`),
  ADD KEY `P_name_2` (`P_name`);

--
-- Indexes for table `Product_list`
--
ALTER TABLE `Product_list`
  ADD PRIMARY KEY (`PL_ID`),
  ADD KEY `P_ID` (`P_ID`),
  ADD KEY `Q_ID` (`Q_ID`),
  ADD KEY `Color_ID` (`Color_ID`);

--
-- Indexes for table `Purchase`
--
ALTER TABLE `Purchase`
  ADD PRIMARY KEY (`PC_ID`);

--
-- Indexes for table `Purchase_detail`
--
ALTER TABLE `Purchase_detail`
  ADD PRIMARY KEY (`PD_ID`),
  ADD KEY `PC_ID` (`PC_ID`),
  ADD KEY `P_ID` (`P_ID`),
  ADD KEY `Color_ID` (`Color_ID`);

--
-- Indexes for table `Purchase_order`
--
ALTER TABLE `Purchase_order`
  ADD PRIMARY KEY (`Q_ID`),
  ADD KEY `Emp_ID` (`Emp_ID`);

--
-- Indexes for table `Quotation`
--
ALTER TABLE `Quotation`
  ADD PRIMARY KEY (`Q_ID`),
  ADD KEY `Cus_ID` (`Cus_ID`),
  ADD KEY `Emp_ID` (`Emp_ID`);

--
-- Indexes for table `rate_price`
--
ALTER TABLE `rate_price`
  ADD PRIMARY KEY (`R_id`),
  ADD KEY `P_ID` (`P_ID`);

--
-- Indexes for table `Update_status`
--
ALTER TABLE `Update_status`
  ADD PRIMARY KEY (`PL_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Close_sale`
--
ALTER TABLE `Close_sale`
  ADD CONSTRAINT `Close_sale_ibfk_1` FOREIGN KEY (`Q_ID`) REFERENCES `Quotation` (`Q_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Detail_Product`
--
ALTER TABLE `Detail_Product`
  ADD CONSTRAINT `Detail_Product_ibfk_1` FOREIGN KEY (`P_ID`) REFERENCES `Product` (`P_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Detail_Product_ibfk_2` FOREIGN KEY (`Color_ID`) REFERENCES `Color` (`Color_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Follow_up`
--
ALTER TABLE `Follow_up`
  ADD CONSTRAINT `Follow_up_ibfk_1` FOREIGN KEY (`Q_ID`) REFERENCES `Quotation` (`Q_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Product_list`
--
ALTER TABLE `Product_list`
  ADD CONSTRAINT `Product_list_ibfk_1` FOREIGN KEY (`Q_ID`) REFERENCES `Quotation` (`Q_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Product_list_ibfk_2` FOREIGN KEY (`P_ID`) REFERENCES `Product` (`P_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Product_list_ibfk_3` FOREIGN KEY (`Color_ID`) REFERENCES `Color` (`Color_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Purchase_detail`
--
ALTER TABLE `Purchase_detail`
  ADD CONSTRAINT `Purchase_detail_ibfk_1` FOREIGN KEY (`PC_ID`) REFERENCES `Purchase` (`PC_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Purchase_detail_ibfk_2` FOREIGN KEY (`P_ID`) REFERENCES `Product` (`P_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Purchase_detail_ibfk_3` FOREIGN KEY (`Color_ID`) REFERENCES `Color` (`Color_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Purchase_order`
--
ALTER TABLE `Purchase_order`
  ADD CONSTRAINT `Purchase_order_ibfk_2` FOREIGN KEY (`Emp_ID`) REFERENCES `Employee` (`Emp_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Purchase_order_ibfk_3` FOREIGN KEY (`Q_ID`) REFERENCES `Quotation` (`Q_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Quotation`
--
ALTER TABLE `Quotation`
  ADD CONSTRAINT `Quotation_ibfk_1` FOREIGN KEY (`Cus_ID`) REFERENCES `customer` (`Cus_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Quotation_ibfk_2` FOREIGN KEY (`Emp_ID`) REFERENCES `Employee` (`Emp_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rate_price`
--
ALTER TABLE `rate_price`
  ADD CONSTRAINT `rate_price_ibfk_1` FOREIGN KEY (`P_ID`) REFERENCES `Product` (`P_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Update_status`
--
ALTER TABLE `Update_status`
  ADD CONSTRAINT `Update_status_ibfk_1` FOREIGN KEY (`PL_ID`) REFERENCES `Product_list` (`PL_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
