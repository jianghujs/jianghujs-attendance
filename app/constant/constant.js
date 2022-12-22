"use strict";

module.exports.tableEnum = Object.freeze({
  // ========================江湖表============================
  _cache: "_cache",
  _constant: "_constant",
  _constant_ui: "_constant_ui",
  _app: "_app",
  _file: "_file",
  _group: "_group",
  _page: "_page",
  _resource: "_resource",
  _resource_request_log: "_resource_request_log",
  _record_history: "_record_history",
  _role: "_role",
  _user: "_user",
  _user_app: "_user_app",
  _view_user_app: "_view02_user_app",
  _user_group_role: "_user_group_role",
  _user_group_role_page: "_user_group_role_page",
  _user_group_role_resource: "_user_group_role_resource",
  _user_session: "_user_session",
  // ========================业务表============================
  attendance:"attendance",

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