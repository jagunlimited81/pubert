from dataclasses import dataclass

@dataclass(frozen=True)
class Config:
    name: str
    context: str
