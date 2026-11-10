sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"sap/fe/app/studentfe/test/integration/pages/StudentList",
	"sap/fe/app/studentfe/test/integration/pages/StudentObjectPage",
	"sap/fe/app/studentfe/test/integration/pages/FavoriteGameObjectPage"
], function (JourneyRunner, StudentList, StudentObjectPage, FavoriteGameObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('sap/fe/app/studentfe') + '/test/flp.html#app-preview',
        pages: {
			onTheStudentList: StudentList,
			onTheStudentObjectPage: StudentObjectPage,
			onTheFavoriteGameObjectPage: FavoriteGameObjectPage
        },
        async: true
    });

    return runner;
});

