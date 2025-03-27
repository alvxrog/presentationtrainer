from abc import ABC, abstractmethod

class MetricResult(ABC):
    @abstractmethod
    def get_result(self) -> any:
        pass