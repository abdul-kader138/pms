<%@ include file="header.jsp" %>

<article class="content items-list-page">
    <div class="title-search-block">
        <div class="title-block">
            <div class="row">
                <div class="col-md-6">
                    <h3 class="title"> Items <a href="item-editor.html" class="btn btn-primary btn-sm rounded-s">
                        Add New
                    </a>
                    </h3>

                    <p class="title-description"></p>
                </div>
            </div>
        </div>
    </div>
    <div class="card items">
        <ul class="item-list striped">
            <li class="item">
                <br/>
                <br/>
                <div class="item-row">
                    <table id="companyTable" class="display nowrap table table-bordered" cellspacing="0" width="100%">
                        <thead>
                        <tr>
                            <th class="th_color" width="25px">id</th>
                            <th class="th_color" width="250px">Name</th>
                            <th class="th_color" width="450px">Address</th>
                            <th class="th_color" width="150px">Logo</th>
                        </tr>
                        </thead>
                    </table>

                </div>
            </li>
        </ul>
    </div>

</article>


<script>
    $(document).ready(function () {

        /* Enable page loader */
        var loading = $.loading();
        var mainPath = document.origin + "/PG";
        $('#companyTable').DataTable({
            "sAjaxSource": "http://localhost:8080/company/companyList",
//                    "sAjaxSource": messageResource.get('company.list.load.url', 'configMessageForUI'),
            "sAjaxDataProp": "",
            "order": [[0, "asc"]],
            'aoColumns': [
                {
                    'sTitle': '',
                    "sClass": "checkbox-column",
                    'mData': 'id',
                    'mRender': function (id) {
                        return '<input class="getVal" style="position: static;"  type="checkbox" name="' + id + '" id="' + id + '">';
                    },
                    'sWidth': '15px',
                    "orderable": false
                },
                {
                    "mData": "name", 'sWidth': '200px', "render": function (data, type, row, id) {
                    if (row.name != null) {
                        var name = row.name.substr(0, 30);
                        return name;
                    }
                    return "";
                }
                },
                {
                    "mData": "address",
                    'sWidth': '400px',
                    "orderable": false,
                    "render": function (data, type, row, id) {
                        if (row.address != null) {
                            var address = row.address.substr(0, 50);
                            return address;
                        }
                        return "";
                    }
                },
                {
                    "mData": "path", "orderable": false,
                    "render": function (url, type, full) {
                        return '<img src="' + mainPath + full.imagePath + '" width="30" height="30" />';
                    }
                }

            ],
            'aaSorting': [[0, 'asc']],
            "columnDefs": [{}],
            "cache": false,
            "bPaginate": true,
            "bLengthChange": true,
            "bFilter": true,
            "bInfo": false,
            "bAutoWidth": true,
            "scrollY": "400",
            "scrollX": true

        })
    });
</script>
<%@ include file="footer.jsp" %>