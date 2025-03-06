from abc import ABC, abstractmethod
from metric_result import MetricResult

class MetricDetector(ABC):
    @abstractmethod
    def detect(self, input: any) -> MetricResult:
        pass
