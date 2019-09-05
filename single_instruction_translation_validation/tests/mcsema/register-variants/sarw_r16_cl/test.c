void leaf() {
  __asm__("sarw %cl, %bx");
  }

void main() {
  leaf();
}