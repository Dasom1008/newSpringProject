<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Moving NavUnderLine</title>

    <style>
        nav:first-child {
            display : flex;
            justify-content : center;
            margin-bottom:2em;
        }

        nav:nth-child(2) {
            display :flex;
            align-items:center;
            flex-direction:column;
        }

        nav a {
            text-decoration:none;
            color:black;
            margin : 1em;
            font-size : 2em;
        }

        #horizontal-underline {
            position : absolute;
            left : 0;
            height : 4px;
            width : 1px;
            border-radius:3px;
            transition:0.5s;
            background-color : pink;
            top:0;
            margin-top : 4px;
        }

        #vertical-underline  {
            position : absolute;
            left : 0;
            height : 4px;
            width: 0;
            border-radius :3px;
            transition:0.5s;
            background-color : skyblue;
            top:0;
            margin-top : 4px;
        }
    </style>

</head>
<body>
    <nav>
        <div id="horizontal-underline"></div>
        <a href="#">About</a>
        <a href="#">Menu</a>
        <a href="#">Store</a>
        <a href="#">Service</a>
        <a href="#">Responsibility</a>
    </nav>


    <nav>
        <div id="vertical-underline"></div>
        <a href="#">About</a>
        <a href="#">Menu</a>
        <a href="#">Store</a>
        <a href="#">Service</a>
        <a href="#">Responsibility</a>
    </nav>

<script type="text/javascript">
    let verticalBar = document.getElementById("vertical-underline");
    let horizontalBar = document.getElementById("horizontal-underline");
    let horizontalMenus = document.querySelectorAll("nav:first-child a");
    let verticalMenus = document.querySelectorAll("nav:nth-child(2) a");

    function verticalIndicater(e){
        verticalBar.style.left = e.offsetLeft + "px";
        verticalBar.style.width = e.offsetWidth + "px";
        verticalBar.style.top = e.offsetTop + e.offsetHeight + "px";
    }

    function horizontalIndicator (e){
        horizontalBar.style.left = e.offsetLeft + "px";
        horizontalBar.style.width = e.offsetWidth + "px";
        horizontalBar.style.top = e.offsetTop + e.offsetHeight + "px";
    }

    horizontalMenus.forEach((menu) =>
        menu.addEventListener("click",(e) =>
            horizontalIndicator(e.currentTarget)
        )
    );

    verticalMenus.forEach((menu)=>
        menu.addEventListener("click",(e)=>
            verticalIndicater(e.currentTarget)
        )
    );
</script>

</body>
</html>
