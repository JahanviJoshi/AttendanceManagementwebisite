<script type="text/javascript" language="javascript">
        $(function () {
            $("#<%=TextBox15.ClientID %>").datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: "dd-mm-yy",
                yearRange: '1950:2018'
            });
        });
    </script>