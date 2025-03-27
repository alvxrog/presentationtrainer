from interfaces.metric.metric_detector import MetricDetector
from interfaces.metric.metric_result import MetricResult

class MPBodyLandmarksDetector(MetricDetector):
    """Implementation of Mediapipe's Body Landmark Metric Detector"""
    def detect(self, input) -> MetricResult:
       raise NotImplementedError 