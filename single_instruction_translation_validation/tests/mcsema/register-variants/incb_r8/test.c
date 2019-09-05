void leaf() {
  __asm__("incb %bl");
  }

void main() {
  leaf();
}