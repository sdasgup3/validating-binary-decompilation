void leaf() {
  __asm__("rcrb %cl, %ah");
  }

void main() {
  leaf();
}