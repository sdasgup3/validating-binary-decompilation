void leaf() {
  __asm__("cmpw %cx, %bx");
  }

void main() {
  leaf();
}