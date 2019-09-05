void leaf() {
  __asm__("cmovsw %cx, %bx");
  }

void main() {
  leaf();
}