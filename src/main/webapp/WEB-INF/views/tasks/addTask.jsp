<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../dynamic/css.jspf" %>

<!DOCTYPE html>
<html lang="pl">


<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.jsp">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-laugh-wink"></i>
            </div>
            <div class="sidebar-brand-text mx-3">Java<sup>SDA</sup></div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <!-- Nav Item - Dashboard -->
        <li class="nav-item active">
            <a class="nav-link" href="#">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>Home</span></a>
        </li>

        <!-- Nav Item - Kursanci -->
        <li class="nav-item">
            <a class="nav-link" href='#'>
                <i class="fas fa-users"></i>
                <span>Kursanci</span></a>
        </li>

        <!-- Nav Item - Kurs -->
        <li class="nav-item">
            <a class="nav-link" href='#'>
                <i class="fas fa-laptop"></i>
                <span>Kurs</span></a>
        </li>


        <!-- Nav Item - Tasks -->
        <li class="nav-item">
            <a class="nav-link" href='#'>
                <i class="fas fa-clipboard-list"></i>
                <span>Taski</span></a>
        </li>


        <!-- Nav Item - Technologie -->
        <li class="nav-item">
            <a class="nav-link" href='#'>
                <i class="fas fa-cogs"></i>
                <span>Technologie</span></a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Inne
        </div>


        <!-- Nav Item - Blank -->
        <li class="nav-item">
            <a class="nav-link" href="#">
                <i class="fas fa-angle-double-left"></i>
                <span>Ocena</span></a>

        </li>

        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">

        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                <!-- Sidebar Toggle (Topbar) -->
                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>


                <!-- Topbar Navbar -->
                <ul class="navbar-nav ml-auto">

                    <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                    <li class="nav-item dropdown no-arrow d-sm-none">
                        <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-search fa-fw"></i>
                        </a>
                        <!-- Dropdown - Messages -->
                        <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                             aria-labelledby="searchDropdown">
                            <form class="form-inline mr-auto w-100 navbar-search">
                                <div class="input-group">
                                    <input type="text" class="form-control bg-light border-0 small"
                                           placeholder="Search for..." aria-label="Search"
                                           aria-describedby="basic-addon2">
                                    <div class="input-group-append">
                                        <button class="btn btn-primary" type="button">
                                            <i class="fas fa-search fa-sm"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </li>


                    <div class="topbar-divider d-none d-sm-block"></div>

                    <!-- Nav Item - User Information -->
                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small">Imi?? nazwisko</span>

                        </a>
                        <!-- Dropdown - User Information -->
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                             aria-labelledby="userDropdown">
                            <a class="dropdown-item" href="#">
                                <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                Profile
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                Logout
                            </a>
                        </div>
                    </li>

                </ul>

            </nav>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">
                <form method="post" action='<c:url value="/addTask"/> '>
                    <!-- Content Row -->
                    <div class="row">
                        <div class="col-xl-12 col-md-12 mb-12">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">


                                    <div class="form-group row">

                                        <label for="firstName" class="col-2 col-form-label">Wybierz kursanta</label>

                                        <div class="col-10">
                                            <select class="form-control" name="person.id">


                                                <option hidden>wybierz</option>
                                                <c:forEach items="${person}" var="title">
                                                    <option value="${title.id}">${title.firstName} ${title.lastName}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>


                                    <input type="hidden" class="form-control" name="creationDate" value="<fmt:formatDate pattern = "yyyy-MM-dd"
         value = "${now}" />" type="date" placeholder="">


                                    <div class="form-group row">
                                        <label for="firstName" class="col-2 col-form-label">Deadline</label>
                                        <div class="col-10">
                                            <input class="form-control" name="deadline" type="date" max="3000-12-31"
                                                   min="<fmt:formatDate pattern = "yyyy-MM-dd" value = "${now}"/>"
                                                   placeholder="">
                                        </div>
                                    </div>


                                    <div class="form-group row">
                                        <label for="start" class="col-2 col-form-label">Tre???? zadania:</label>
                                        <div class="col-10">
                                        <textarea class="form-control" rows="5" name="description" id="start"
                                                  placeholder="tutaj opisz zadanie..."></textarea>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <div class="form-group row">

                                <div class="col-md-9 col-sm-9 col-xs-9">
                                    <div class="row">
                                        <div class="col-sm-2">
                                            <label class="radio-inline"><input type="radio" name="color" value="success"
                                                                               checked>
                                                <i class="btn btn-success btn-circle btn-sm"></i> poziom junior</label>
                                        </div>
                                        <div class="col-sm-2">
                                            <label class="radio-inline"><input type="radio" name="color" value="info">
                                                <i class="btn btn-info btn-circle btn-sm"></i> poziom junior+</label>
                                        </div>
                                        <div class="col-sm-2">
                                            <label class="radio-inline"><input type="radio" name="color"
                                                                               value="secondary">
                                                <i class="btn btn-secondary btn-circle btn-sm"></i> poziom mid</label>
                                        </div>
                                        <div class="col-sm-2">
                                            <label class="radio-inline"><input type="radio" name="color"
                                                                               value="primary">
                                                <i class="btn btn-primary btn-circle btn-sm"></i> poziom mid+</label>
                                        </div>
                                        <div class="col-sm-2">
                                            <label class="radio-inline"><input type="radio" name="color" value="danger">
                                                <i class="btn btn-danger btn-circle btn-sm"></i> poziom senior</label>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <input class="btn btn-success pull-left" type="submit" value="Wy??lij" id="searchButton"></input>
                </form>

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        <%@ include file="../dynamic/fotter.jspf" %>

        <%@ include file="../dynamic/javascript.jspf" %>
</body>

</html>
