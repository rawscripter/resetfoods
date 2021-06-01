<template>
    <div id="campaign_page">
        <div class="row">
            <div class="col-lg-12">
                <div class="project-progree-breadcrumb">
                    <div class="breadcrumb-main user-member justify-content-sm-between createModal">
                        <div class=" d-flex flex-wrap justify-content-center breadcrumb-main__wrapper">
                            <div class="d-flex align-items-center user-member__title justify-content-center mr-sm-25">
                                <h4 class="text-capitalize fw-500 breadcrumb-title">Your Links</h4>
                                <span class="sub-title ml-sm-25 pl-sm-25">{{ urls.length }} active links</span>
                            </div>

                        </div>
                        <div class="action-btn">
                            <router-link :to="{name:'url-create'}" class="btn px-15 btn-primary"
                                         data-toggle="modal" data-target="#new-member">
                                <i class="las la-plus fs-16"></i>create Link
                            </router-link>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="project-top-wrapper project-top-progress d-flex justify-content-between flex-wrap">
                    <div class="project-top-left d-flex flex-wrap justify-content-lg-between justify-content-center">
                        <div class="project-tap global-shadow order-lg-1 order-2 ml-xl-0 mr-xl-20 ml-md-20">
                            <ul class="nav px-1" id="ap-tab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="ap-overview-tab" data-toggle="pill"
                                       @click="urlStatus = 'all'" role="tab" aria-controls="ap-overview"
                                       aria-selected="true">all
                                        links</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="timeline-tab" data-toggle="pill" @click="urlStatus = 1"
                                       role="tab"
                                       aria-controls="timeline" aria-selected="false">Active</a>
                                </li>
                                <li class="nav-item">
                                    <a @click="urlStatus = 0" class="nav-link" id="early-tab" data-toggle="pill"
                                       role="tab"
                                       aria-controls="early" aria-selected="false">closed</a>
                                </li>
                            </ul>
                        </div>
                        <div
                            class="project-search project-search--height global-shadow mb-lg-0 mb-20 order-lg-2 order-1">
                            <form action="#" class="d-flex align-items-center user-member__form">
                                <span data-feather="search"></span>
                                <input v-model="keyword" class="form-control mr-sm-2 border-0 box-shadow-none"
                                       type="search"
                                       placeholder="Search" aria-label="Search">
                            </form>
                        </div>
                    </div>
                    <div class="project-top-right d-flex flex-wrap">

                        <div class="project-icon-selected">
                            <div class="listing-social-link pb-lg-0 pb-xs-2">
                                <div class="icon-list-social d-flex">
                                    <a class="icon-list-social__link rounded-circle icon-list-social__style justify-content-center ml-xl-20 mr-20  active"
                                       href="#">
                                        <span data-feather="grid"></span></a>
                                    <a class="icon-list-social__link rounded-circle icon-list-social__style justify-content-center "
                                       href="#">
                                        <span data-feather="list"></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- End: .col-lg-12 -->

        </div>
        <!-- Tab Menu End -->
        <div class="projects-tab-content projects-tab-content--progress">
            <div class="tab-content mt-25" id="ap-tabContent">
                <div class="tab-pane fade show active" id="ap-overview" role="tabpanel"
                     aria-labelledby="ap-overview-tab">
                    <div class="row" v-if="urls.length > 0">
                        <div v-for="(url,index) in urls" class="col-xl-4 mb-25 col-md-6 min-300">

                            <div class="user-group radius-xl bg-white media-ui media-ui--early pt-30 pb-25">
                                <div class="px-30">
                                    <div class="media user-group-media d-flex justify-content-between">
                                        <div
                                            class="media-body d-flex align-items-center flex-wrap text-capitalize my-sm-0 my-n2">
                                            <router-link
                                                :to="{name:'url-details',params:{url:url.id}}">
                                                <h6 class="mt-0  fw-500 user-group media-ui__title">{{ url.name }}</h6>
                                            </router-link>
                                            <span
                                                class="my-sm-0 my-2 media-badge text-uppercase color-white bg-pink">{{
                                                    url.status ? 'Active' : 'Closed'
                                                }}</span>
                                        </div>
                                        <div class="mt-n15">
                                            <div class="dropdown dropleft">
                                                <button class="btn-link border-0 bg-transparent p-0"
                                                        data-toggle="dropdown" aria-haspopup="true"
                                                        aria-expanded="false">
                                                    <span data-feather="more-horizontal"></span>
                                                </button>
                                                <div class="dropdown-menu">
                                                    <!--                                                    <a class="dropdown-item" href="#">preview</a>-->
                                                    <router-link
                                                        class="dropdown-item"
                                                        :to="{name:'url-details',params:{url:url.id}}">
                                                        details
                                                    </router-link>
                                                    <router-link
                                                        class="dropdown-item"
                                                        :to="{name:'url-edit',params:{url:url.id}}">
                                                        edit
                                                    </router-link>
                                                    <a class="dropdown-item" href="#">copy</a>
                                                    <a class="dropdown-item" href="#">delete</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <p class="mt-3 text-small">{{ url.new_url }}</p>

                                    <div class="user-group-people mt-10 text-capitalize">
                                        <p>{{ url.description }}</p>


                                        <div class="d-flex"
                                             :class="url.enable_goal ? 'justify-content-between':'justify-content-start'">
                                            <div class="user-group-project">
                                                <div class="d-flex align-items-center user-group-progress-top">
                                                    <div class="media-ui__start">
                                                        <span class="color-light fs-12">Start Date</span>
                                                        <p class="fs-14 fw-500 color-dark mb-0">
                                                            {{ url.created_at | formatDateIntoNormalFormat }}</p>
                                                    </div>
                                                    <div class="media-ui__end" v-if="url.expirable">
                                                        <span class="color-light fs-12">end date</span>
                                                        <p class="fs-16 fw-500 color-success mb-0">
                                                            {{ url.expire_at | formatDateIntoNormalFormat }}</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="user-group-progress-bar" v-if="url.enable_goal">

                                                <div class="progress-wrap d-flex align-items-center mb-0">
                                                    <div class="progress">
                                                        <div class="progress-bar bg-pink" role="progressbar"
                                                             :style="`width: ${url.goal_percentage}%;`"
                                                             aria-valuenow="83"
                                                             aria-valuemin="0"
                                                             aria-valuemax="100"></div>
                                                    </div>


                                                    <span class="progress-percentage">{{ url.goal_percentage }}%</span>


                                                </div>

                                                <p class="color-light fs-12 mb-20">Clicks: {{ url.clicks }} - Limit: {{
                                                    url.goal
                                                    }}</p>
                                            </div>
                                        </div>
                                    </div>


                                </div>

                            </div>

                        </div>
                    </div>
                    <div v-else>
                        <h1 class="text-center text-muted mt-15">No Data Found</h1>
                    </div>
                </div>
            </div>
        </div><!-- End: .projects-tab-content -->
        <div class="row mb-3 ">
            <div class="col-md-12 text-center center-pagination d-flex justify-content-center">
                <pagination :pagination="paginationLists"
                            @paginate="getAllUrls()"
                            :offset="6">
                </pagination>
            </div>

        </div>
    </div>
</template>


<script>
import Pagination from "../Helpers/Pagination";

export default {
    name: "UrlIndex",
    components: {
        'pagination': Pagination
    },
    data() {
        return {
            urls: [],
            paginationLists: {
                data: [],
                total: 0,
                per_page: 2,
                from: 1,
                to: 0,
                current_page: 1
            },
            urlStatus: 'all',
            offset: 8,
            keyword: '',
            surveyListAvailable: true,
        }
    },
    watch: {
        'keyword': {
            immediate: true,
            handler(newVal) {
                this.getAllUrls();
            }
        },
        'urlStatus': {
            immediate: true,
            handler(newVal) {
                this.getAllUrls();
            }
        },
    },

    mounted() {
        setTimeout(function (evt) {
            this.jqueryFunction();
        }.bind(this), 500);
        this.getAllUrls();
    },
    methods: {
        getAllUrls() {
            axios.get(`/url/all?keyword=${this.keyword}&page=${this.paginationLists.current_page}&status=${this.urlStatus}`)
                .then(response => {
                    this.paginationLists = response.data;
                    this.urls = response.data.data;
                    loadSvgIcons();
                })
                .catch(err => {
                    console.error(err)
                })
        },
        jqueryFunction: function () {
            loadSvgIcons();
            // init select 2
            $(".js-example-basic-single").select2({
                minimumResultsForSearch: Infinity,
                placeholder: "Select Coupon",
                dropdownCssClass: "cupon",
                allowClear: true,
            });
        },
    },
}
</script>


<style scoped>
.min-300 {
    min-height: 250px !important;
}

.user-group-progress-bar {
    width: 50%;
}

a {
    cursor: pointer;
}
</style>
