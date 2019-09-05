void leaf() {
  __asm__("tzcntw %cx, %bx");
  }

void main() {
  leaf();
}