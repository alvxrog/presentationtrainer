from abc import ABC, abstractmethod
from metric.metric_result import MetricResult
from cue_result import CueResult

class CueDetector(ABC):
    @abstractmethod
    def detect(self, metrics: set[MetricResult]) -> CueResult:
        pass