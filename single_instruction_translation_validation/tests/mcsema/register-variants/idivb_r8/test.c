void leaf() {
  __asm__("idivb %bl");
  }

void main() {
  leaf();
}