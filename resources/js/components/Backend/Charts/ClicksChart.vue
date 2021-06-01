<template>
  <div class="card">
    <div class="card-header mt-2">
      <div>
        <h6>Click Performance</h6>
      </div>
      <div class="card-extra">
        <ul class="perfomence-tab-links card-tab-links mr-3 nav-tabs nav">
          <li>
            <a href="javascript:void(0)" data-toggle="tab"
               id="w_perfomence-day-tab"
               role="tab" area-controls="w_perfomence" aria-selected="false">Day</a>
          </li>
          <li>
            <a href="javascript:void(0)" data-toggle="tab"
               id="w_perfomence-week-tab"
               role="tab" area-controls="w_perfomence" aria-selected="false">Week</a>
          </li>
          <li>
            <a href="javascript:void(0)" data-toggle="tab"
               id="w_perfomence-month-tab"
               role="tab" area-controls="w_perfomence" aria-selected="false">Month</a>
          </li>
        </ul>
      </div>
    </div>
    <div class="card-body">
      <div>
        <canvas id="showClickChart"></canvas>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "ClicksChart",
  props: ['url'],
  data() {
    return {
      labels: [],
      dataSeries: []
    }
  },
  mounted() {
    this.getChartData();
  },
  methods: {
    getChartData(type) {
      let params = {
        url_id: this.url.id,
      };
      axios.post(`/get-days-click`, params).then(response => {
        this.labels = response.data.data.categories;
        this.dataSeries = response.data.data.series;
        this.renderChart();
      }).catch(error => {

      })
    },
    renderChart() {

      var ctxs = document.getElementById('showClickChart');
      if (ctxs) {
        ctxs.getContext("2d");
        ctxs.height = 70;
        var charts = new Chart(ctxs, {
          type: "line",
          data: {
            labels: this.labels,
            datasets: [{
              data: this.dataSeries,
              borderColor: "#5F63F2",
              borderWidth: 4,
              fill: true,
              backgroundColor: () =>
                  chartLinearGradient(ctxs, 300, {
                    start: "#5F63F230",
                    end: "#ffffff05",
                  }),
              label: "Clicks",
              pointStyle: "circle",
              pointRadius: "0",
              hoverRadius: "9",
              pointBorderColor: "#fff",
              pointBackgroundColor: "#5F63F2",
              hoverBorderWidth: 5,
            },
              {
                data: this.dataSeries,
                borderColor: "#C6D0DC",
                borderWidth: 2,
                fill: false,
                backgroundColor: "#00173750",
                label: "Views",
                borderDash: [3, 3],
                pointRadius: "0",
                hoverRadius: "0",
              },
            ],
          },
          options: {
            maintainAspectRatio: true,
            legend: {
              display: false,
              position: "bottom",
              labels: {
                boxWidth: 6,
                display: true,
                usePointStyle: true,
              },
            },
            hover: {
              mode: "index",
              intersect: false,
            },
            tooltips: {
              mode: "label",
              intersect: true,
              backgroundColor: "#000",
              position: "average",
              enabled: true,
              // custom: customTooltips,
              callbacks: {
                label(t, d) {
                  const {
                    yLabel,
                    datasetIndex
                  } = t;
                  return ` ${yLabel} ${d.datasets[datasetIndex].label}`;
                },
              },
            },
            scales: {
              yAxes: [{
                stacked: false,
                gridLines: {
                  display: true,
                  color: "#e5e9f2",
                },
                ticks: {
                  beginAtZero: false,
                  fontSize: 14,
                  display: true,
                  suggestedMin: 50,
                  suggestedMax: 80,
                  stepSize: 20,
                  callback: function (label, index, labels) {
                    return label;
                  },
                },
              },],
              xAxes: [{
                stacked: true,
                gridLines: {
                  display: false,
                },
                ticks: {
                  beginAtZero: false,
                  fontSize: 11,
                  display: true,
                },
              },],
            },
          },
        });

      }
    }
  }

}
</script>

<style scoped>

</style>
