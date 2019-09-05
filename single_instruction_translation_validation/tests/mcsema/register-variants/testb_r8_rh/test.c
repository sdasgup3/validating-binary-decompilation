void leaf() {
  __asm__("testb %ah, %bl");
  }

void main() {
  leaf();
}