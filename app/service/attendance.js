const Service = require("egg").Service;

const dayjs = require("dayjs");
const _ = require("lodash");
const { tableEnum, attendanceTypeEnum } = require("../constant/constant");
const validateUtil = require("@jianghujs/jianghu/app/common/validateUtil");

const actionDataScheme = Object.freeze({
  createAttendanceRecord: {
    type: "object",
    additionalProperties: true,
    required: ["lessonNumber", "attendanceDate", "studentIdList"],
    properties: {
      lessonNumber: { type: "string"},
      attendanceDate: { type: "string"},
      studentIdList: { type: "array", "items": {
        type: "object",
        properties: {
          id: { type: "string"},
          attendance: { type: "string"},
        },
        required: ["id", "attendance"],
      }},
    },
  },
});


class AttendanceService extends Service {
  async createAttendanceRecord() {
    const { jianghuKnex } = this.app;
    const { userId, username } = this.ctx.userInfo;
    const actionData = this.ctx.request.body.appData.actionData;
    validateUtil.validate(actionDataScheme.createAttendanceRecord, actionData);
    const {
      studentIdList,
      attendanceDate,
      lessonNumber,
      courseId,
      remarks,
    } = actionData;


    const addData = studentIdList.map(studentItem=> ({
      courseId,
      studentId: studentItem.id,
      attendanceDate,
      lessonNumber,
      
      attendance: studentItem.attendance,
      remarks,
      markedByUserId: userId,
      markedByUser: username,
      markedAt: dayjs().format('YYYY-MM-DD hh:mm:ss'),
    }))

    await jianghuKnex(tableEnum.attendance, this.ctx).jhInsert(addData);
  }
  async updateAttendanceRecord() {
    const { jianghuKnex } = this.app;
    const { userId, username } = this.ctx.userInfo;
    const actionData = this.ctx.request.body.appData.actionData;
    validateUtil.validate(actionDataScheme.createAttendanceRecord, actionData);
    const {
      studentIdList,
      attendanceDate,
      lessonNumber,
      courseId,
    } = actionData;


    const editData = studentIdList.map(studentItem=> ({
      courseId,
      studentId: studentItem.id,
      attendanceDate,
      lessonNumber,
      
      attendance: studentItem.attendance,
      remarks: studentItem.remarks,
    }))
    // 循环更新
    for (const student of editData) {
      const { courseId, studentId, lessonNumber, attendance, remarks } = student;
      await jianghuKnex(tableEnum.attendance, this.ctx).where({courseId, studentId, lessonNumber}).jhUpdate({attendance, remarks});
    }
  }
 
}
module.exports = AttendanceService;
