void leaf() {
  __asm__("cmovaew %cx, %bx");
  }

void main() {
  leaf();
}