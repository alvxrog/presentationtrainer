from abc import ABC, abstractmethod

class CueResult(ABC):
    @abstractmethod
    def get_result(self) -> any:
        pass