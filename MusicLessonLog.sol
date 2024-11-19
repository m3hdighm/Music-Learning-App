
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MusicLessonLog {
    struct Lesson {
        string title;
        string content;
        uint256 date;
    }

    Lesson[] public lessons;

    function addLesson(string memory title, string memory content) public {
        lessons.push(Lesson(title, content, block.timestamp));
    }

    function getLesson(uint256 index) public view returns (string memory, string memory, uint256) {
        require(index < lessons.length, "Lesson index out of bounds.");
        Lesson memory lesson = lessons[index];
        return (lesson.title, lesson.content, lesson.date);
    }
}
