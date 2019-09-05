void leaf() {
  __asm__("sbbw %cx, %bx");
  }

void main() {
  leaf();
}