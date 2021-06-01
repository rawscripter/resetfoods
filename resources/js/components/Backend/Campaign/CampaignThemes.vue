<template>
    <div class="themes_page">
        <div class="row">
            <div class="col-lg-12">

                <div class="breadcrumb-main">
                    <h4 class="text-capitalize breadcrumb-title">Bookmarks</h4>
                    <div class="breadcrumb-action justify-content-center flex-wrap">

                        <div class="dropdown action-btn">
                            <button class="btn btn-sm btn-default btn-white dropdown-toggle" type="button"
                                    aria-expanded="false">
                                <i class="la la-share"></i> Documentation
                            </button>

                        </div>
                        <div class="action-btn">
                            <a href="" class="btn btn-sm btn-primary btn-add">
                                <i class="la la-plus"></i> Import Theme</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="bookmark-page bookmark-page--grid mb-30">
            <div class="row">
                <div class="columns-1 col-lg-4 col-md-5 col-sm-12">
                    <div class="bookmark-sidebar">

                        <div class="note-sidebar">
                            <div class="card border-0">
                                <div class="card-body px-15 pt-30">
                                    <div class="px-3">
                                        <a href="#" class="btn btn-primary btn-default btn-rounded btn-block"
                                           data-toggle="modal" data-target="#taskModal"> <span
                                            data-feather="plus"></span>
                                            Add Campaign</a>
                                    </div>
                                    <div class="note-types task-types">
                                        <ul class="nav  mb-3" id="pills-tab" role="tablist">
                                            <li class="nav-item" role="presentation">
                                                <a class="nav-link active" id="pills-home-tab" data-toggle="pill"
                                                   href="#pills-home" role="tab" aria-controls="pills-home"
                                                   aria-selected="true"><span data-feather="folder"></span> Surveys</a>
                                            </li>
                                            <li class="nav-item" role="presentation">
                                                <a class="nav-link" id="pills-profile-tab" data-toggle="pill"
                                                   href="#pills-profile" role="tab" aria-controls="pills-profile"
                                                   aria-selected="false"><span data-feather="folder"></span>
                                                    Rating Feedback</a>
                                            </li>
                                            <li class="nav-item" role="presentation">
                                                <a class="nav-link" id="pills-contact-tab" data-toggle="pill"
                                                   href="#pills-contact" role="tab" aria-controls="pills-contact"
                                                   aria-selected="false"><span data-feather="folder"></span>
                                                    Scratch</a>
                                            </li>
                                            <li class="nav-item" role="presentation">
                                                <a class="nav-link" id="pills-deleted-tab" data-toggle="pill"
                                                   href="#pills-deleted" role="tab" aria-controls="pills-deleted"
                                                   aria-selected="false"><span data-feather="folder"></span>
                                                    Quizzes</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="columns-2 col-lg-8 col-md-7 col-sm-12 mt-sm-30 mt-md-0">
                    <div class="bookmark-page__list">
                        <div class="bookmark-single">
                            <div class="bookmark-card card">
                                <div class="card-header">
                                    <h6 class="fs-500">Theme Collection (Note: Themes With A Star Is Only For Premium
                                        And Professional Plan Users)</h6>
                                </div>
                                <div class="card-body pt-30">
                                    <div class="tab-content" id="pills-tabContent">
                                        <div class="tab-pane fade show active" id="pills-home" role="tabpanel"
                                             aria-labelledby="pills-home-tab">
                                            <div class="row mx-n1">
                                                <div class="cus-xl-3 col-lg-6 col-md-12 col-sm-6 col-12 mb-30"
                                                     v-for="theme in 6" :key="theme">

                                                    <div class="card bookmark bookmark--grid">
                                                        <div class="bookmark__image">
                                                            <div class="like-icon" v-show="theme%2==0? true:false">
                                                                <button type="button" class="content-center">
                                                                    <i class="las la-star color-warning"></i>
                                                                </button>
                                                            </div>
                                                            <a href="#"><img class="card-img-top img-fluid"
                                                                             src="/img/bookmark.png"
                                                                             alt="digital-chair"></a>
                                                        </div>
                                                        <div class="card-body px-15 py-20">
                                                            <div class="bookmark__body text-capitalize">
                                                                <h6 class="card-title">Theme {{ theme }}</h6>
                                                                <a href="#">Lorem ipsum dolor sit amet, consectetur
                                                                    adipisicing elit.</a>
                                                            </div>
                                                            <div class="bookmark__button d-flex mt-15 flex-wrap">
                                                                <button
                                                                    class="btn btn-primary btn-sm btn-squared border-0 "
                                                                    data-toggle="modal" data-target="#taskModal2">Select
                                                                </button>
                                                                <button
                                                                    class="btn btn-sm btn-squared btn-outline-light px-15 ">
                                                                    Preview
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade task-modal" id="taskModal" tabindex="-1" aria-labelledby="taskModalLabal"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="modal-header">
                            <h5 class="modal-title">New Campaign</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span data-feather="x"></span>
                            </button>
                        </div>
                        <form action="/">
                            <div class="form-group mb-20 mt-20">
                                <input type="text" class="form-control" placeholder="Campaign Name">
                            </div>
                            <div class="form-group mb-15">
                                <select class="form-control" name="" id="">
                                    <option value="">Campaign Type</option>
                                    <option value="">Survey</option>
                                    <option value="">Rating Feedback</option>
                                    <option value="">Scratch</option>
                                    <option value="">Quizzes</option>
                                </select>
                            </div>
                        </form>
                        <div class="modal-footer m-n15">
                            <button type="button" class="btn btn-light" data-dismiss="modal">Cancel</button>
                            <button type="button" class="btn btn-primary">Create</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: "CampaignThemes"
}
</script>

<style scoped>

</style>
