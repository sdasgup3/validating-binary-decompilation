void leaf() {
  __asm__("cmovcw %cx, %bx");
  }

void main() {
  leaf();
}