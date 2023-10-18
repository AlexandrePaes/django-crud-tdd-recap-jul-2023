from django.test import TestCase
from .models import Task


class TaskModelTest(TestCase):
    def test_task_model_exists(self):
        task = Task.objects.count()
        self.assertEqual(task, 0)


    def test_model_has_string_representation(self):
        task = Task.objects.create(title='First task')
        self.assertEqual(str(task), task.title)


class IndexPageTest(TestCase):
    def test_index_page_returns_correct_reponse(self):
        response = self.client.get('/')
        self.assertTemplateUsed(response, 'task/index.html')
        self.assertEqual(response.status_code, 200)


    def test_index_page_has_tasks(self):
        task = Task.objects.create(title='First task')
        response = self.client.get('/')
        self.assertContains(response, task.title)