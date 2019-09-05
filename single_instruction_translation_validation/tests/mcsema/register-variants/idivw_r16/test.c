void leaf() {
  __asm__("idivw %bx");
  }

void main() {
  leaf();
}