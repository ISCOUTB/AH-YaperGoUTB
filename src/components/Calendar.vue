<script>
export default {
    data() {
        return {
            selectedDate: null,
            currentMonth: new Date().getMonth(),
            currentYear: new Date().getFullYear(),
            daysOfWeek: ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"],
        };
    },
    computed: {
        currentMonthYear() {
            return new Date(this.currentYear, this.currentMonth).toLocaleDateString("en-US", {
                month: "long",
                year: "numeric",
            });
        },
        calendarDays() {
            const firstDayOfMonth = new Date(this.currentYear, this.currentMonth, 1);
            const lastDayOfMonth = new Date(this.currentYear, this.currentMonth + 1, 0);
            const days = [];

            for (let day = 1 - firstDayOfMonth.getDay(); day <= lastDayOfMonth.getDate(); day++) {
                const date = new Date(this.currentYear, this.currentMonth, day);
                days.push({
                    date,
                    inCurrentMonth: date.getMonth() === this.currentMonth,
                });
            }

            return days;
        },
    },
    methods: {
        prevMonth() {
            if (this.currentMonth === 0) {
                this.currentMonth = 11;
                this.currentYear -= 1;
            } else {
                this.currentMonth -= 1;
            }
        },
        nextMonth() {
            if (this.currentMonth === 11) {
                this.currentMonth = 0;
                this.currentYear += 1;
            } else {
                this.currentMonth += 1;
            }
        },
        selectDay(day) {
            this.selectedDate = day.date;
            this.$emit("day-selected", {
                day: day.date,
                week: this.getWeekNumber(day.date),
                month: day.date.getMonth() + 1,
                year: day.date.getFullYear(),
            });
        },
        isSelected(day) {
            return this.selectedDate && day.date.toDateString() === this.selectedDate.toDateString();
        },
        getWeekNumber(date) {
            const firstDayOfYear = new Date(date.getFullYear(), 0, 1);
            const days = Math.floor((date - firstDayOfYear) / (24 * 60 * 60 * 1000));
            return Math.ceil((days + firstDayOfYear.getDay() + 1) / 7);
        },
    },
};
</script>

<template>
    <div class="calendar-container mt-5">

        <div class="container-fluid">
            <div class="row align-items-center justify-content-between my-4">
                <div class="col-auto">
                    <h3>Timeline</h3>
                </div>
                <div class="col-auto">
                    <button type="button" class="btn-outline-primary btn-calendar">Add Object +</button>
                </div>
            </div>
        </div>


        <div class="calendar-header d-flex justify-content-between align-items-center">
            <button @click="prevMonth" class="btn btn-outline-primary">&lt;</button>
            <h3>{{ currentMonthYear }}</h3>
            <button @click="nextMonth" class="btn btn-outline-primary">&gt;</button>
        </div>
        <div class="calendar-grid">
            <div class="day-name" v-for="day in daysOfWeek" :key="day">{{ day }}</div>
            <div v-for="day in calendarDays" :key="day.date" :class="['calendar-day', { 'selected': isSelected(day) }]"
                @click="selectDay(day)">
                <div class="day-circle">{{ day.date.getDate() }}</div>
            </div>
        </div>

        <div class="container-fluid">
            <div class="row align-items-center justify-content-center my-4">
                <button type="button" class="btn-outline-primary btn-calendar" style="width: 100px;"
                    @click="today()">Today</button>
            </div>
        </div>

    </div>
</template>


<style scoped>
.btn-calendar {
    border: none;
    background: #0050EF;
    color: white;
    
    border-radius: 24px;
    padding: 0px 20px;
    width: 150px;
    height: 40px;
}

.btn-calendar:hover {
    background: #007bef;
}
.btn-calendar:active {
background-color: #093AD8;
}

.calendar-container {
    width: 80%;
    max-width: 400px;
    margin: auto;
}

.calendar-header {
    margin-bottom: 1rem;
}

.calendar-grid {
    display: grid;
    grid-template-columns: repeat(7, 1fr);
    gap: 0.5rem;
}

.day-name {
    text-align: center;
    font-weight: bold;
    color: #093AD8;
}

.calendar-day {
    display: flex;
    justify-content: center;
    align-items: center;
    cursor: pointer;
}

.day-circle {
    width: 45px;
    height: 45px;
    background-color: white;
    border-radius: 50%;
    color: #252525;
    display: flex;
    align-items: center;
    justify-content: center;
}

.selected .day-circle {
    background-color: #0050EF;
    color: white;
}
</style>