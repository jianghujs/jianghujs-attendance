"use strict";

module.exports.tableEnum = Object.freeze({
  // ========================江湖表============================
  _cache: "_cache",
  _constant: "_constant",
  _constant_ui: "_constant_ui",
  _group: "_group",
  _page: "_page",
  _record_history: "_record_history",
  _resource: "_resource",
  _role: "_role",
  _test_case: "_test_case",
  _ui: "_ui",
  _user: "_user",
  _user_group_role: "_user_group_role",
  _user_group_role_page: "_user_group_role_page",
  _user_group_role_resource: "_user_group_role_resource",
  _user_session: "_user_session",
  // ========================业务表============================
  attendance:"attendance",
  course:"course",
  student:"student",
  // ========================基础 View============================
  _view01_user: "_view01_user",
  view01_student_attendance: "view01_student_attendance",
});

module.exports.categoryPublishStatusEnum = Object.freeze({
  login: "login",
  draft: "draft",
  deleted: "deleted",
});

module.exports.articlePublishStatusEnum = Object.freeze({
  login: "login",
  draft: "draft",
  deleted: "deleted",
});

module.exports.genderEnum = Object.freeze({
  male: 'male',
  female: 'female'
})

module.exports.articleViewTypeEnum = Object.freeze({
  content: 'content',
  audio: 'audio',
  video: 'video',
})

module.exports.attendanceTypeEnum = Object.freeze({
  chuqin: '出勤',
  queqin: '缺勤',
  chidao: '迟到',
  zaotui: '早退',
})